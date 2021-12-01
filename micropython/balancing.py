'''Switch balancing on and off
   for cells 1...8 '''
    

import pcf8574
from machine import I2C, Pin
import time

i2c = I2C(0, scl=Pin(9), sda=Pin(8), freq=100000)
pcf0 = pcf8574.PCF8574(i2c, 0x20)
pcf1 = pcf8574.PCF8574(i2c, 0x21)



def switch_on_0(pins):
    # cells numbered 1...8
    for p in pins:
        pcf0.pin(p - 1, 0)     # negative logic due to optocouplers

def switch_on_1(pins):
    # cells numbered 1...8
    for p in pins:
        pcf1.pin(p - 1, 0)     # negative logic due to optocouplers
        
        
def switch_off_all_0():
    pcf0.port = 255        # negative logic!
    
    
def switch_off_all_1():
    pcf1.port = 255        # negative logic!  

def switch_off_all():
    switch_off_all_0()
    switch_off_all_1()
    
def switch_on(pins):
    switch_off_all()
    for p in pins:
        if p <= 8:
            pcf0.pin(p - 1, 0)     # negative logic due to optocouplers
        else:
            pcf1.pin(p - 9, 0)

if __name__ == '__main__':

    balancing.switch_off_all()
    pins = [1,2,3,4, 8, 12 , 11, 10, 9]


    while True:
        switch_off_all()
        time.sleep(0.05)
        switch_on(pins)
        time.sleep(0.1)
    
    
'''
# read pin 2
pcf.pin(2)

# set pin 3 HIGH
pcf.pin(3, 1)

# set pin 4 LOW
pcf.pin(4, 0)

# toggle pin 5
pcf.toggle(5)

# set all pins at once with 8-bit int
pcf.port = 0xff

# read all pins at once as 8-bit int
pcf.port
'''