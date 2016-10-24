200.times do
  operation = [:add, :subtract, :multiply, :divide].sample
  if operation == :add || operation == :subtract
    sum = (20..200).to_a.sample
    addend = (10..(sum-10)).to_a.sample
    puts "\\item \\(#{addend}+#{sum-addend}=#{sum}\\)" if operation == :add
    puts "\\item \\(#{sum}-#{addend}=#{sum-addend}\\)" if operation == :subtract
  else
    first_factor = (2..25).to_a.sample
    second_factor = (2..25).to_a.sample
    puts "\\item \\(#{first_factor}\\times#{second_factor}=#{first_factor*second_factor}\\)" if operation == :multiply
    puts "\\item \\(#{first_factor*second_factor}\\div#{first_factor}=#{second_factor}\\)" if operation == :divide
  end
end
