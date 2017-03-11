# frozen_string_literal: false

require_relative './morse_code'

def decode_morse(morse_code)
  morse_code.strip.split('   ').map do |word|
    word.split(' ').map { |letter| MORSE_CODE[letter] || '*' }.join
  end.join(' ')
end

def parse_bits(bits)
  bits.gsub!(/(^(0*))|((0*)$)/, '')
  t = bits.scan(/0+|1+/).map(&:length).min
  bits.gsub(/1{#{t * 3}}/, '-').gsub(/1{#{t * 1}}/, '.')
      .gsub(/0{#{t * 7}}/, '   ').gsub(/0{#{t * 3}}/, ' ').gsub(/0{#{t}}/, '')
end
