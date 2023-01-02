class AddColumnToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :p_type, :string
    add_column :products, :product_type_id, :integer
  end
end
