class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :category_type
      t.references :parent, foreign_key: { to_table: :categories }
      t.integer :product_id
      t.timestamps
    end
  end
end
