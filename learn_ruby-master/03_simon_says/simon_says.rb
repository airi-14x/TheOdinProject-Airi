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
    i = 0
    while(i < num) do
      message = message + " "
      i = i + 1
    end
    return message
end
end
