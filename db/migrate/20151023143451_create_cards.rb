class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :question, null: false
      t.string :answer, null: false
      t.string :false_answer_1
      t.string :false_answer_2
      t.string :false_answer_3
      t.integer :deck_id, null: false

      t.timestamps null: false
    end
  end
end
