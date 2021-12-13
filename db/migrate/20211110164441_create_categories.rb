class CreateCategories < ActiveRecord::Migration[6.1]
  def change

    create_table :categories do |t|
      t.string :title
      t.string :description
      t.boolean :active

      t.timestamps
    end
  end
end
