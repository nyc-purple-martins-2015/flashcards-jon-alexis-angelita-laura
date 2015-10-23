class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :card_id, null: false
      t.integer :round_id, null:false
      t.integer :attempts, null:false, default: 0
      t.boolean :solved, null: false, default: false

      t.timestamps null: false
    end
  end
end
