#write your code here

def echo(message)
    message
end

def shout(message)
    message.upcase
end

def repeat(message, num = 2)
if num == 2
      message + " " + message
else
    ([message] * num).join(" ")
end
end

def start_of_word(message, up_to_index)
message[0 ... up_to_index]
end

def first_word(message)
new_message = message.split(" ")
new_message[0]
end

def titleize(message)
little_words = ["and", "the", "over", "or"]
new_message = message.split(" ")
output_message = []
i = 0
new_message.each do |item|
  if i == 0 || i == new_message.length - 1 || item.length > 4
    output_message.push(item.capitalize)
  else
    output_message.push(item)
  end
  i += 1
end
output_message.join(" ")   
#message.split(" ").collect(&:capitalize).join(" ")

end
