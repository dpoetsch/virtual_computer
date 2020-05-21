num = []
count = 0

loop do 
puts 'Put a number:'
num.push(gets.chomp.to_i)
count += 1

    if 
        count == 3
        break
    end
end

puts ""

num.each do |a|
    puts "#{a}² é = #{a **= 2}"
end

