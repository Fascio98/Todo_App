class AddUniqueIndexToCategory < ActiveRecord::Migration[6.1]
  def change


    add_index :categories, :title, unique: true, where:"active is true"
    
  end
end
