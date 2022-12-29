class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :ad_line1
      t.string :ad_line2
      t.string :area
      t.string :city
      t.string :country
      t.integer :pin_code
      t.string  :phone
      t.integer :userable_id
      t.string  :userable_type
      
      
      t.timestamps
    end
  end
end
