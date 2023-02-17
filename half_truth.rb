file = File.open("half_truth_input.txt")
file_data = file.readlines.map(&:chomp)
#puts file_data

@truthy = ["true", "false"]

file_data.each do |x|
  line = x.split(" ")
  if (@truthy - line).empty?
    puts "true"
  else
    puts "false"
  end
end