class AddFlippedToCards < ActiveRecord::Migration
  def change
  	add_column :cards, :flipped, :boolean, default: false
  end
end
