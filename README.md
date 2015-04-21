# led-backlight-osx

Code to enable the led backlight (i.e SCR LK) on os x, since the keyboard button just dims the screen

This has been tested and works with CMSTORM Devastator on OS X 10.10 (Yosemite)

## How to use

Since I always like the numlk turned on, on the keyboard. The script has two modes. If you call the command with no parameters the scrlk and numlk are turned on. If you pass any argument, e.g. "off". Everything but the numlk is turned off.

Once the scrlk is turned on the backlight is enabled.

  ./led-backlight-osx # turns the backlight on
  
  ./led-backlight-osx off # turns the backlight off

## How it works

This code is forked from https://developer.apple.com/library/mac/samplecode/HID_LED_test_tool/Introduction/Intro.html which runs through all the led lights.

After investigating the code it seems that it uses a binary mask to turn on the leds. i.e.

   0  | turns off all leds
   1  | turns on first led, numlk
   2  | turns on second led, caps lock
   3  | turns on first and second
   4  | turns on third led
   5  | turns on first and third
   
And so on, ... after the 7th it just seems to cycle back, i.e. 8 is the same as 0

For more internal details of the code, see the [upstream README file](apple-code-readme.rst)
