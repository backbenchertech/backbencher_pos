class AddColumToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :owner, :string
  end
end
