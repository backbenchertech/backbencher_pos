class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :category_name
      t.integer :parent_id
      t.timestamps
    end
  end
end
