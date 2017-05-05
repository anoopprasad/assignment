class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :phone
      t.integer :salary
      t.string :email
      t.integer :department_id

      t.timestamps null: false
    end
  end
end
