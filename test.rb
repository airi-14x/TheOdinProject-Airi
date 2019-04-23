class Student
	attr_accessor :first_name, :last_name, :primary_phone_number

 	def introduction(target)
		puts "Hi #{target}, I'm #{first_name}!"
	end
	def favourite_number
		7
	end
end

frank = Student.new
frank.first_name = "Frank"
frank.introduction('Katrina')
puts "Frank's favourite number is #{frank.favourite_number}."

puts 'Hello there, what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '? What a lovely name!'

puts 'First name?'
first_name = gets.chomp
puts 'Last name?'
last_name = gets.chomp
puts 'Your full name is: ' + first_name + ' ' + last_name

