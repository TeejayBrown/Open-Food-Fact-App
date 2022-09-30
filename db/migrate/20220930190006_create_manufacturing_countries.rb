class CreateManufacturingCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :manufacturing_countries do |t|
      t.string :name

      t.timestamps
    end
  end
end
