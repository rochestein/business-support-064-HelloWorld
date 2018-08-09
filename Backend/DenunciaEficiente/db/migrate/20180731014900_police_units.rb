class PoliceUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :police_units do |t|
      t.string :name
      t.timestamps null: false 
    end
  end
end
