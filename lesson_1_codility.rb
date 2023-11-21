def solution(n)
  # Implement your solution here
  b = n.to_s(2)
  count_ones = 0
  gaps_arr = []
  b.each_char { |val| count_ones += 1 if val == '1' }
  return 0 if count_ones <= 1 || count_ones == b.length

  b.each_char.with_index do |char, index|
    next if char == '0'

    break if index == b.length - 1

    gap = 0
    b[(index + 1)..(b.length - 1)].each_char do |b_val|
      gap += 1 if b_val == '0'
      if b_val == '1'
        gaps_arr << gap
        break
      end
    end
  end

  gaps_arr.max
end

puts solution(1041)
puts solution(32)
puts solution(15)
