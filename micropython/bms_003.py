from ADC_multi_02 import Multi_ADC
from machine import I2C, Pin
from OLED_03 import OLED
import time
    
# Switch
d_switch = Pin(14, Pin.IN, Pin.PULL_UP)
charge_OK = Pin(16, Pin.OUT)
discharge_OK = Pin(17, Pin.OUT)


# charge_ok = Pin(
# I2C init
i2c_channel = 0
sclpin = 9
sdapin = 8
i2c = I2C(i2c_channel, scl=Pin(sclpin), sda=Pin(sdapin))

# OLED init
oled = OLED(128, 64, i2c)
oled.clear()
  
# ADC init
addresses = [72, 73, 75]                 # 74 does not work though it is scanned ????
multi_adc = Multi_ADC(i2c, addresses)

# voltage divider on input for ca. 50V range
factor = 49.7/2.7                # voltage divider 47k / 2.7k on input

V_MAX = 4.18
V_MIN = 3.8
#---------------------------------------------------------------------------
def print_voltages(volt_str, separator = '\t'):
    '''print array of voltages, tab separated'''
    i = 1
    for v in volt_str:
        print( v, end = separator)
        #print(i, ": ", v, end = separator)
        i+=1
    
    
def display_voltages(volt_str):
    ''' display array of voltages on OLED
    left col.: 1-6
    right col.: 7-12'''
    oled.clear()
    i = 0
    for v in volt_str[0:6]:
        oled.text(v, 0, i*10)
        i+=1
    i = 0
    for v in volt_str[6:12]:
        oled.text(v, 64, i*10)
        i+=1    
    oled.show()
#--------------------------------------------------------------------------------
def calculate_cellvoltages(voltages):
    ''' calculate voltages of individual cells
        where cells are connected in series and
        voltages is the array of voltages to ground'''
    diff =[]
    diff.append(voltages[0])
    for i in range(0, len(voltages)-1):
        d = voltages[i+1] - voltages[i]
        diff.append(d)
    return diff

def plausibility_check(cellvoltages, threshold = 0.05):
    '''sets difference voltage to 0 if negative
       or below threshold
       This is done to visualize non existing cells'''
    d = []
    for v in cellvoltages:
        if v < threshold:
            v = 0
        d.append(v)
    return d

def check_cell_voltages(voltages, vmin = V_MIN,  vmax = V_MAX):
    # check high limit
    too_high = 0
    too_high_cells = []
    i = 1
    for v in voltages:
        if v > vmax:
            too_high = 1
            too_high_cells.append(i)
        i+=1
    if too_high:
        charge_OK.value(0)
        #overvoltage.value(1)
    else:
        charge_OK.value(1)
        #overvoltage.value(0)
    
    # check low
    too_low = 0
    too_low_cells = []
    i = 1
    for v in voltages:
        if v <vmin:
            too_low = 1
            too_low_cells.append(i)
        i+=1
    if too_low:
        discharge_OK.value(0)
        #undervoltage.value(1)
    else:
        discharge_OK.value(1)
        # undervoltage.value(0)    
        
    return too_high, too_high_cells, too_low, too_low_cells


        
# -----------------------------------------------------------------------------------------
##if __name__ == '__main__':
##    MAIN    

def main():
    
    while True:
        voltages = multi_adc.read_all(factor = factor)
        volt_str = [ '%.3f' %v for v in voltages]
        
        cellvoltages = calculate_cellvoltages(voltages)
        cellvoltages = plausibility_check(cellvoltages)
        cell_v_str = [ '%.3f' %v for v in cellvoltages]
        
        # check
        too_high, th_cells, too_low, tl_cells= check_cell_voltages(cellvoltages)
        
                   
        
        # print & display
        if d_switch.value():
            print_voltages(volt_str)
            display_voltages(volt_str)
        else:
            print_voltages(cell_v_str)
            display_voltages(cell_v_str)
        
        if too_high:
            print ("V too high on: ", th_cells, end = '\t')
        
        if too_low:
            print ("V too low on: ", tl_cells, end = '\t')
            
        print()    
        time.sleep(1)
        
main()        
