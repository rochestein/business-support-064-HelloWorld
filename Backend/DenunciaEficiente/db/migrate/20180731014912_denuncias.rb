class Denuncias < ActiveRecord::Migration[5.2]
  def change
    create_table :denuncias do |t|
      t.belongs_to :usuario, index: true, foreign_key: true
      t.bigint :incidencia_id, null: false
      t.bigint :unidad_policia_id, null: false
      t.string :ubicacion, null: false
      t.timestamp :fecha_incidencia, null: false
      t.timestamps null: false
    end 
  end
end
