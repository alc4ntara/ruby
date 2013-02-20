# encoding = UTF-8

require './dog'
require './cat'
require './bird'

cachorro = Dog.new
gato     = Cat.new
passaro  = Bird.new

cachorro.nome  = "Hugo"
cachorro.idade = 45
cachorro.talk("Meu nome é #{cachorro.nome}. Eu tenho #{cachorro.idade} anos.")
cachorro.bite
puts "Cachorro tem pelo? #{cachorro.tempelo?}"
puts "Qual a chande de você me morder? #{cachorro.chancemorder} %"

gato.nome  = "André"
gato.idade = 25
gato.talk("Meu nome é #{gato.nome}. Eu tenho #{gato.idade} anos.")
gato.jump
puts "Gato tem pena? #{gato.tempena?}"

passaro.nome  = "Mateus"
passaro.idade = 99
passaro.talk("Meu nome é #{passaro.nome}. Eu tenho #{passaro.idade} anos.")
passaro.fly
puts "Passaro tem pena? #{passaro.tempena?}"
