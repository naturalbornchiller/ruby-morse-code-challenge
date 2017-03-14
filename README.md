[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Morse Code Challenge

Convert Morse Code messages into text.

Adapted from these CodeWars exercises, created by user [jolaf](http://www.codewars.com/users/jolaf):

-   [Decode the Morse Code](http://www.codewars.com/kata/decode-the-morse-code/ruby)
-   [Decode the Morse Code, Advanced](http://www.codewars.com/kata/decode-the-morse-code-advanced/ruby)

## Prerequisites

-   None

## Instructions

1.  Fork and clone this repository.
1.  Change into the new directory.
1.  Install dependencies.
1.  Create and checkout a new branch to work on.
1.  Fulfill the listed requirements.

Starter code is available in [`lib/challenge.rb`](lib/challenge.rb). A pull
request is not required, but it is necessary if you want a code review.

You may wish to refer to [FAQs](https://github.com/ga-wdi-boston/meta/wiki/)
related to [forking,
cloning](https://github.com/ga-wdi-boston/meta/wiki/ForkAndClone).

## Requirements

Create a method, `decode_morse`, which takes a string of dots/dits (`'.'`) and
 dashes/dahs (`'-'`) and converts it into a readable message.
A Morse Code dictionary, `MORSE_CODE`, has been provided for you.
If an invalid letter code is passed in, `decode_morse` should replace that
 invalid letter with an asterisk (`'*'`).
Letters are separated by space, while words are separated by a group of
 three spaces.
Remove any leading or trailing whitespace.

## Bonus : `parse_bits`

Let's imagine that a signal is being sent along a wire; at the receiving end,
 it is being sampled and converted into a set of 1s and 0s.
i.e.
'1010100010001000' => "see"

The Morse Code specification dictates that:

-   A 'dot' (`'.'`) is one time unit long
-   A 'dash' (`'-'`) is three time units long
-   The pause between each dot and dash in a letter is one time unit long.
-   The pause between letters in a word is three time units long.
-   The pause between words is 7 time units long

However, we don't necessarily know how fast the person on the other end is at
 sending their signals - the precise length of a 'time unit' is unknown.
If they're a slow telegraphist, their dots and dashes might be stretched out,
 e.g.'111000111000111000000000111000000000111000000000' => "see"

The `parse_bits` method should take a string of 1s and 0s and convert it into
 the dots and dashes that were being sent.
Be sure to disregard any stretches of silence (i.e. 0s) before or after the
 message

## Tasks

Developers should run these often!

- `bin/rake nag`  (or `bundle exec rake nag`): runs code quality analysis tools on your code and complains.
- `bin/rake test` (or `bundle exec rake test`): runs automated tests.
- `bin/rake` will run both `nag` and `test`

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
