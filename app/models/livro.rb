class Livro < ActiveRecord::Base
		
	validates_presence_of :nome
	validates_numericality_of 	:isbn,
					:greater_than_or_equal_to => 0
					

	private
	def primeira_letra_deve_ser_maiuscula
	errors.add("nome", "primeira letra deve ser maiúscula") unless nome=~ /[A-Z].*/
	end
	
	
end
