class Createlivros < ActiveRecord::Migration
  def self.up
    create_table :livros do |t|
	t.string :nome, 
	t.string :isbn
      t.timestamps
    end
  end

  def self.down
    drop_table :livros
  end
end
