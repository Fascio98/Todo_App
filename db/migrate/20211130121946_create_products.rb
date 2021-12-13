class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      # t.biginy :product_id
      # t.string :product_type
      # t.decimal :quantity

      t.references :product, polymorphic:true, null:false
      t.timestamps
    end
  end
end
