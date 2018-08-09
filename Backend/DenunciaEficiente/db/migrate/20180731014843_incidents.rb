class Incidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.bigint :incident_father_id
      t.timestamps null: false 
    end
  end
end
