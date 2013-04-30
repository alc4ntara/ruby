class Error < StandardError
	def BichinhoSemNome
	end
	def BichinhoSemIdade
	end
end
class Pet
	attr_accessor :nome, :idade
	def talk (string)
		puts string
	end
	def initialize(nome="nada", idade="nada")
		if nome == "nada" 
			raise Error.BichinhoSemNome
		end
		if idade == "nada"
			raise Error.BichinhoSemIdade
		end
	end
end
