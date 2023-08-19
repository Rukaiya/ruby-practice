# frozen_string_literal: true

def max_multiplication(input)
  return nil unless input.is_a?(String)

  return nil if input.scan(/\d/).map(&:to_i).length < 4

  max_result = nil

  (0..input.length - 4).each do |index|
    current_sequence = input[index..index + 3]
    next unless current_sequence =~ /\d{4}/

    temp_result = current_sequence.chars.map(&:to_i).reduce(:*)
    max_result = temp_result if max_result.nil? || temp_result > max_result
  end
  puts max_result.inspect
end

max_multiplication('abc12345def')
max_multiplication('a1b2c3d4e')
