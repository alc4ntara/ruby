require './pet'
class Bird < Pet
	def fly
		puts "Estou voando!"
	end

	def tempena?
		true
	end
	
	def tempelo?
		false
	end
end
