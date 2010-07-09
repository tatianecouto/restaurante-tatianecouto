class RestaurantesController < ApplicationController
	
	before_filter :logado?, :except => :index

	def index
		@restaurantes = Restaurante.paginate :page=> params['page'], :per_page=>3
	end

	def show
		@restaurante = Restaurante.find(params[:id])
	end	

	def new
		@restaurantes = Restaurante.new	ogin
	end

	def create
		@restaurantes = Restaurante.new(params[:restaurante])

		if @restaurantes.save
			redirect_to(:action => "show", :id => @restaurantes)
		else
			render :action => "new"
		end
	end

	def edit
		@restaurantes = Restaurante.find(params[:id])
	end

	def update
		@restaurantes = Restaurante.find(params[:id])
		if @restaurante.update_attributes(params[:restaurantes])
			redirect_to(:action => "show", :id => @restaurantes)
		else
		render :action => "edit"
		end
	end

	def destroy
		@restaurantes = Restaurante.find(params[:id])
		@restaurantes.destroy
		redirect_to(:action => "index")
	end

end


