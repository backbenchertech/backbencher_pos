class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :joining_date
      t.string :registration
      t.string :status
      t.integer :role_id
      t.integer :user_id
      t.integer :company_id
      t.timestamps
    end
  end
end
