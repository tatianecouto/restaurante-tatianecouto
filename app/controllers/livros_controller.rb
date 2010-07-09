class LivrosController < ApplicationController
	def index
		@livros = Livro.find(:all, :order => "nome")
	end

	def destroy
		@livros = Livro.find(params[:id])
		@livros.destroy
		redirect_to(:action => "index")
	end

end

