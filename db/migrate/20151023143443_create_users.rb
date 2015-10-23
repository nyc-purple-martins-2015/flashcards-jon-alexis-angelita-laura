class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, presence: true
      t.string :password_hash, null: false

      t.timestamps null: false
    end
  end
end
