def guess_number guess
	number = 25 
	puts "You got it!" if guess = number
	puts "Guess was too high!" if guess > number
	puts "Guess was too low!" if guess < number
end