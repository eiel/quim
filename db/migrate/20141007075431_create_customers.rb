class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :last_name
      t.string :first_name
      t.string :email

      t.timestamps
    end
  end
end
