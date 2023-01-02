class CreateProductTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :product_types do |t|
      t.string :name
      t.boolean :has_quantity
      t.boolean :is_default
      
      t.timestamps
    end
  end
end
