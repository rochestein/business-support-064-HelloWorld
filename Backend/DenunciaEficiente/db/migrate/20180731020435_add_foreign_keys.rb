class AddForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :complaints, :incidents
    add_foreign_key :incidents, :incidents, column: :incident_father_id, primary_key: :id
    add_foreign_key :complaints, :police_units, column: :police_unit_id, primary_key: :id
    add_foreign_key :evidences, :complaints
    add_foreign_key :witnesses, :complaints
  end
end
