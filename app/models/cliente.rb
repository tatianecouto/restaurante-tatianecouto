class Cliente < ActiveRecord::Base
	has_many :qualificacoes
	
	validates_presence_of :senha, :message => "-deve ser preenchido"
	validates_presence_of :lingua,:message => "-deve ser preenchido"        
	validates_presence_of :nome, :message => "-deve ser preenchido"
	validates_uniqueness_of :nome, :message => "nome cadastrado"
	validates_numericality_of :idade, :greater_than => 0, :less_than => 100, 
				  :message => "-deve ser um numero entre 0 e 100"
		

end
