from machine import Pin, Timer
import time

led = Pin(25, Pin.OUT)

for i in range(0, 6):
    led.toggle()
    time.sleep(0.1)
    