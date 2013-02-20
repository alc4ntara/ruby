require './pet'
class Cat < Pet
	def jump
		puts "Estou pulando!"
	end

	def tempena?
		false
	end
	
	def tempelo?
		true
	end
end
