class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :format
      t.text :description

      t.timestamps
    end
  end
end
