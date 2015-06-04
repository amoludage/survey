class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :gender
      t.string :password
      t.references :role, index: true
      t.timestamps null: false
    end
  end
end
