require './pet'
class Dog < Pet
	
	def bite
		puts "Estou mordendo!"
	end
		
	def tempena?
		false
	end
	
	def tempelo?
		true
	end
	
	def chancemorder
		chance = Random.new
		chance.rand * 100
	end
end
