class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :category
      t.integer :company_id    
     
      t.timestamps
    end
  end
end
