class Dragon

	def initialize(name)
		@name = name
		@stomach = 5
		@sleep = false
	end

	def name
		@name
	end

	def hunger
		@stomach
	end

	def feed
		@stomach = @stomach + 1
	end

	def sleep
		@sleep = true
		@stomach = @stomach -2
		puts "You put #{@name} to sleep"
	end
	

end

puts "What action will you take? -> hatch dragon"
action = gets.chomp

if action == "hatch dragon"
	puts "Name your dragon"
	name_dragon = gets.chomp.to_s
	dragon = Dragon.new(name_dragon)
	puts "You named your dragon #{dragon.name}"
end



while action != "set free"
	puts "What action will you take? sleep , feed , set free"
	action = gets.chomp

	if action == "hatch dragon"
		puts "You just hatched a dragon, look after this one first."
	end
	

	if action == "sleep"
		dragon.sleep
		@sleep = false
		puts dragon.name + " Wakes Up"
		if dragon.hunger <= 0 
			puts "#{dragon.name} starved and died, you forgot to feed!"
			exit
		else
			puts dragon.name + " Has #{dragon.hunger} things in their belly."
		end
	end


	if action == "feed" && dragon.hunger != 10
		dragon.feed
		puts "You fed #{dragon.name} their stomach now has #{dragon.hunger} things in it"

	elsif action == "feed" && dragon.hunger > 0
		puts "#{dragon.name} seems pretty full up."
	end

	if action == "set free" && dragon.hunger > 5
		puts "You sent #{dragon.name} off into the world with a full stomach, they will survive!"
		exit
	elsif action == "set free" && dragon.hunger <= 5
		puts "You sent #{dragon.name} off into the world without proper care, it is unlikely #{dragon.name} will survive. Such is life."
		exit
	end
end