class AddStatsToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :total, :integer, default: 0
    add_column :rounds, :answered, :integer, default: 0
    add_column :rounds, :correct, :integer, default: 0
  end
end
