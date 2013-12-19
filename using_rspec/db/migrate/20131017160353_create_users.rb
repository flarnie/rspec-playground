class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :session_token
      t.string :password_hash

      t.timestamps
    end
    add_index :users, :username
    add_index :users, :session_token, :unique => true
    add_index :users, :password_hash, :unique => true
  end
end
