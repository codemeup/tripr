class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :password_digest
      t.string :fbid
      t.string :age
      t.string :email
      t.string :created_at

      t.timestamps
    end
  end
end
