# SenseHat

This library makes it easy to interact with a [raspberry pi Sense Hat](https://www.raspberrypi.org/products/sense-hat/).
The Sense Hat has a bunch of useful peripherals that were assembled to make it easy for [kids to participate in science projects](https://astro-pi.org/) on the International Space Sation.
There are good [technical specs for the board](https://www.raspberrypi.org/blog/astro-pi-tech-specs/) if you're interested.

## RGB LEDs

There is an 8 x 8 matrix of RGB LEDs built into the Sense Hat.
The LEDs are arranged in a matrix like this:

```
PIN-HEADERS-UP-HERE

 0  1  2  3  4  5  6  7
 8  9 10 11 12 13 14 15
16 17 18 19 20 21 22 23
24 25 26 27 28 29 30 31
32 33 34 35 36 37 38 39
40 41 42 43 44 45 46 47
48 49 50 51 52 53 54 55
56 57 58 59 60 61 62 63

PWR    HDMI                JOYSTICK
```

These are available as a [linux framebuffer](https://www.kernel.org/doc/html/latest/fb/framebuffer.html) device.
We just need to write 1kb (64 pixels of 16bits) of data into the `/dev/fb1` file.
Each pixel is a RGB 5-6-5 value and they are layed out like this:
