class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :title
      t.references :user

      t.timestamps(null: false)
    end
  end
end
