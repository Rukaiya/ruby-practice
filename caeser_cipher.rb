# Implement a Caesar cipher that takes in a string and the shift factor and then outputs the modified string using a right shift

def caeser_cipher(input_string, shift_value)
  array = ('a'..'z').to_a + ('A'..'Z').to_a
  output_string = ''
  input_string.each_char do |char|
    updated_char = if array.include?(char)
                     char_index = array.index(char)
                     index = char_index + shift_value
                     index %= 26 if index > array.length - 1
                     array[index]
                   else
                     char
                   end
    output_string << updated_char
  end
  puts output_string
end

# optimized version with no array assignment
def caeser_cipher2(input_string, shift_value)
  input_string.chars.map do |char|
    if char.between?('a', 'z')
      ((char.ord - 'a'.ord + shift_value) % 26 + 'a'.ord).chr
    elsif char.between?('A', 'Z')
      ((char.ord - 'A'.ord + shift_value) % 26 + 'A'.ord).chr
    else
      char
    end
  end.join
end

puts 'Give the input string: '
input_string = gets.chomp
puts 'Give the shift value: '
shift_value = gets.chomp

caeser_cipher(input_string, shift_value.to_i)
result = caeser_cipher2(input_string, shift_value.to_i)
puts result
