# encoding: utf-8
class Pessoa
	attr_accessor :nome, :cor, :idade
end

pessoa1 = Pessoa.new
puts pessoa1.class
pessoa1.nome = "Marí"
puts pessoa1.nome

pessoa2 = Pessoa.new
pessoa2.nome = pessoa1.nome
puts pessoa2.nome


