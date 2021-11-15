''' Read one or multiple ADS1115 modules (up to 4), so providing 4, 8, 12 or 16 analogue inputs
    addresses: 72, 73, (74), 75 as the ADDR pin is connected to GND, VDD, (SDA), 75
    The use of addr. 74 is somewhat critical, prefer 75 if 12 inputs are enough.
    This is based on https://github.com/robert-hh/ads1x15
    
    imports ADS1x15
'''
# -----------------------------------------------------------------------------------------
from machine import I2C, Pin
from ADS1x15 import ADS1115


class ADC(ADS1115):
    ''' for one ADS1115 module with 4 ADCs'''
    
    def __init__(self, i2c, address=72, gain=1):  
        #self.i2c = I2C(i2c_channel, scl=Pin(sclpin), sda=Pin(sdapin))
        self.i2c = i2c
        self.adc = ADS1115(self.i2c, address, gain)
        
    def read(self,  rate=4, channel1=0, channel2=None, factor = 1):
        ''' read one channel, unipolar'''
        self.raw = self.adc.read(rate, channel1, channel2)
        v = self.adc.raw_to_v(self.raw) * factor
        return v
 
    def read_all(self, rate = 4, factor = 1):
        '''read all 4 channels of an ADS1115, unipolar'''
        voltages = []
        for i in range(0,4):
            v = self.read( rate=rate, channel1=i, channel2=None, factor = factor)
            voltages.append(v)
        return voltages
        
    def read_all_as_string(self, rate = 4, factor = 1, separator = '\t'):
        ''' returns all 4 ADC voltages (channels 0...3) as string
            values separated by separator (default = <TAB>)
        '''
        voltages = self.read_all(rate = rate, factor = factor)
        volt_str = [ '%.3f' %v for v in voltages] 
        return separator.join(volt_str)
#-----------------------------------------------------------------------------------------
class Multi_ADC():
    ''' for more than one ADS1115 module'''
    
    def __init__(self, i2c, addresses, gain = 1):
        self.i2c = i2c
        self.addresses = addresses
        
        self.adcs = []
        for addr in addresses:
            _adc = ADC(i2c, address = addr, gain = gain)
            #time.sleep(0.001)
            self.adcs.append(_adc) 

    def read_all(self, rate = 4, factor = 1):
        '''read all 4 channels of all ADC modules and return voltages as array'''
        voltages = []
        for adc in self.adcs:
            for i in range(0,4):
                v = adc.read( rate=rate, channel1=i, channel2=None, factor = factor)
                voltages.append(v)
        return voltages
# -----------------------------------------------------------------------------------------
if __name__ == '__main__':
    import time
    i2c_channel = 0
    sclpin = 9
    sdapin = 8
    i2c = I2C(i2c_channel, scl=Pin(sclpin), sda=Pin(sdapin))
    
      
    addresses = [72, 73, 75]                 # 74 does not work though it is scanned ????
    
    multi_adc = Multi_ADC(i2c, addresses)
    voltages = multi_adc.read_all()
    for v in voltages:
        print(v)
    
