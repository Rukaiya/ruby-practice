# frozen_string_literal: true

def count_ones(number)
  number.to_s(2).count('1')
end

def sort_array(num_arr)
  result = num_arr.sort do |a, b|
    comparison_value = count_ones(a) <=> count_ones(b)
    comparison_value.zero? ? a <=> b : comparison_value
  end
  puts result.inspect
end

numbers = [7, 8, 9, 3, 0]
sort_array(numbers)
