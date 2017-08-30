class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.string :state_name, null: false
      t.string :city_name, null: false
      t.references :user, foreign_key: true, null: false
      t.references :city, foreign_key: true, null: false
      t.references :state, foreign_key: true, null: false

      t.timestamps
    end
  end
end
