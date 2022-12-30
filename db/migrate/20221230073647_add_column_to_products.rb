class AddColumnToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :p_type, :string
  end
end
