def die_roll
  die_1 = rand(7)
  die_2 = rand(7)
  total_roll = die_1 + die_2
end

point = die_roll
puts point

if point == 7
  puts "You win!"
else
  while true
    new_roll = die_roll
    puts new_roll
    if new_roll == point
      puts "You win!"
      break
    elsif new_roll == 7
      puts "You lose"
      break
    end
  end
end