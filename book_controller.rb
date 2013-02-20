require './book'

class BookController < Book

	def excluir?
		true
		excluir_estoque(1, 12, "lixo")
		salvar?
	end
	protected
	def salva?
		true
	end

	private
	def excluir_stoque(id_estoque, id_livro, str_motivo)
	end
end
