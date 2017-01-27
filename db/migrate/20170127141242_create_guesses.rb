class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.string :user_answer
      t.boolean :correct
      t.references :round
      t.references :card

      t.timestamps(null: false)
    end
  end
end
