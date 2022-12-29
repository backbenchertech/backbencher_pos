class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :phone_no
      t.string :gst
      t.string :pan
      t.string :cin
      t.timestamps
    end
  end
end
