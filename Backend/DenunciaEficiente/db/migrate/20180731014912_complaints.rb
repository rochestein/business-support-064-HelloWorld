class Complaints < ActiveRecord::Migration[5.2]
  def change
    create_table :complaints do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.bigint :incident_id, null: false
      t.bigint :police_unit_id, null: false
      t.string :location, null: false
      t.timestamp :date_incident, null: false
      t.timestamps null: false
    end 
  end
end
