class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :status
      t.decimal :latitude
      t.decimal :longitude
      t.references :state

      t.timestamps
    end
  end
end
