# frozen_string_literal: true

def max_multiplication(input)
  # check for a string
  return nil unless input.is_a?(String)

  # check whether is has at least 4 numbers
  return nil if input.scan(/\d/).map(&:to_i).length < 4

  max_result = nil

  (0..input.length - 4).each do |index|
    current_sequence = input[index..index + 3]
    # check for 4 consecutive numbers
    next unless current_sequence =~ /\d{4}/

    # calculate the multiplication of the sequence
    temp_result = current_sequence.chars.map(&:to_i).reduce(:*)
    max_result = temp_result if max_result.nil? || temp_result > max_result
  end
  puts max_result.inspect
end

max_multiplication('abc12345def')
max_multiplication('a1b2c3d4e')
