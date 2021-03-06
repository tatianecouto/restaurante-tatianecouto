class AutenticacaosController < ApplicationController
	
	def create

		cliente = Cliente.find_by_nome_and_senha (params[:login], params[:senha])

		if cliente
			flash[:notice] = "Logado com sucesso"
			session[:cliente]=cliente
			redirect_to :controller => 'restaurantes', :action => 'index'

		else 
			flash[:notice] = "Usuário ou senha inválidos"
			redirect_to login_path
		end	

		
	end

	def destroy
		reset_session
		redirect_to login_path
	end

end
