from machine import Pin, I2C
i2c = I2C(0, scl=Pin(9), sda=Pin(8), freq=100000)
addresses = i2c.scan()
for a in addresses:
    print(hex(a))