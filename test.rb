def cal_points(ops)
  temp = []
  ops.each do |op|
    case op
    when op.to_i.to_s == op
      temp << op.to_i
    when 'D'
      temp << op.to_i * 2
    when 'C'
      temp.pop
    when '+'
      temp << temp[-1].to_i + temp[-2].to-i
    end
    temp.sum
  end
end

puts cal_points(['5', '2', 'C', 'D', '+'])
