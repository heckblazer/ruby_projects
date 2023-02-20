input = ['Why did the chicken cross the road?', 'Gb trg gb gur bgure fvqr!']


def rot13(secret_messages)

  normal = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ".split('').to_a
  rot13 = "NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm ".split('').to_a
  secret_key = normal.zip(rot13).to_h
  decoded_messages = Array.new
  
  secret_messages.collect do |x|
    new_arr = []
    x.chars.collect do |char|
      new_arr << secret_key[char]
    end
    decoded_messages << new_arr.join
  end
  return decoded_messages
end


test = rot13(input)
puts test