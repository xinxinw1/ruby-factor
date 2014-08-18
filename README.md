# Number Factoring Script

Uses GNU coreutils factor and readline to quickly and easily factor large numbers.

## How to run

1. Go to https://github.com/xinxinw1/ruby-factor/releases and download the latest release.
2. Extract `factor.rb` to any directory.
3. Open a shell and cd to that directory.
4. Run `$ ruby factor.rb`

## Instructions

If you type in any positive integer (ex. 10276938564540) and press enter, you'll get a readable version of its factors. The factors will be separated by "*" which represents multiplication and "^" which means exponentiation.

If the number is prime, you will just get the original number back.

If you type in many positive integers separated by "+" (ex. 190890 + 63252 + 44226) and press enter, you'll get two lines: The first one factors out the greatest common divisor (gcd) from the numbers, and the second line factors all of the numbers.

All spaces in the input are ignored.

You can press the up and down keys to go to previous inputs.

Press Ctrl+C during a calculation to cancel it without exiting.

Type "exit" or "quit" or press Ctrl+C at ">" to exit.

## Examples

A huge number (2^200 - 1)

`1606938044258990275541962092341162602522202993782792835301375`

Powers of 2

`2 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512`

[Frank Nelson Cole's famous number](http://en.wikipedia.org/wiki/Frank_Nelson_Cole)

`147573952589676412927`

2^2048 (Watch this calculate instantly)

`32317006071311007300714876688669951960444102669715484032130345427524655138867890893197201411522913463688717960921898019494119559150490921095088152386448283120630877367300996091750197750389652106796057638384067568276792218642619756161838094338476170470581645852036305042887575891541065808607552399123930385521914333389668342420684974786564569494856176035326322058077805659331026192708460314150258592864177116725943603718461857357598351152301645904403697613233287231227125684710820209725157101726931323469678542580656697935045997268352998638215525166389437335543602135433229604645318478604952148193555853611059596230656`
