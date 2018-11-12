# frozen_string_literal: false

require_relative './morse_code'

def decodeMorse(morse)
  morse.gsub('   ', ' ..--.- ')
       .split(' ')
       .map{|ch| MORSE_CODE[ch] || '*'}
       .join
       .gsub('_',' ')
       .strip
end

def parse_bits(bits)
  tu = bits.scan(/[1]{1,}/).sort[0].length # time unit
  dit, dah, ch_space, l_space, w_space = tu, tu*3, tu, tu*3, tu*7
  bits.gsub(/[0]{#{w_space}}/, '   ') # betwixt words
      .gsub(/[0]{#{l_space}}/, ' ') # bt letters
      .gsub(/[0]{#{ch_space}}/, '') # bt dots and/or dashes
      .gsub(/[1]{#{dah}}/, '-') # dashes
      .gsub(/[1]{#{dit}}/, '.') # dots
      .strip
end

msg = '-... .. --.   -... ..- - - ...'
bits = '111010101000101010001110111010000000111010101000101011100011100011100010101'
parse_bits(bits)

The Morse Code specification dictates that:

dot = 1
dash = 111
between_dot_or_dash_in_letter = 0
between_letters = 000
between_words = 0000000
-   A 'dot' (`'.'`) is one time unit long
-   A 'dash' (`'-'`) is three time units long
-   The pause between each dot and dash in a letter is one time unit long.
-   The pause between letters in a word is three time units long.
-   The pause between words is 7 time units long

However, we don't necessarily know how fast the person on the other end is at
 sending their signals - the precise length of a 'time unit' is unknown.
If they're a slow telegraphist, their dots and dashes might be stretched out,
 e.g.'111000111000111000000000111000000000111000000000' => "see"
