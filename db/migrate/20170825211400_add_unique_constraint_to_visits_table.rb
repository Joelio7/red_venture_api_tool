class AddUniqueConstraintToVisitsTable < ActiveRecord::Migration[5.1]
  def change
    add_index :visits, [:user_id, :city_name, :state_name], :unique => true
  end
end
