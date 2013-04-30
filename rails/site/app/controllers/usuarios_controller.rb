class UsuariosController < ApplicationController
# index - GET /usuarios
	def index
		@usuarios = Usuario.all
	end

	def show
		render text: params[:id]
	end

	def edit
		render text: params[:id]
	end

	def update
		render text: "Atualizando #{params[:id]} com #{params}"
	end

	def destroy
		render text: "Deletando #{params[:id]}"
	end
end