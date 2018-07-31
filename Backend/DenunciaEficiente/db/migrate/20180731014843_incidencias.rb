class Incidencias < ActiveRecord::Migration[5.2]
  def change
    create_table :incidencias do |t|
      t.string :nombre, null: false
      t.text :descripcion, null: false
      t.bigint :incidencia_padre_id
      t.timestamps null: false 
    end
  end
end
