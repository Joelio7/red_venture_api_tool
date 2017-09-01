class AddUniqueConstraintToVisitsTable < ActiveRecord::Migration[5.1]
  def change
    add_index :visits, [:user_id, :city_id], :unique => true
  end
end
