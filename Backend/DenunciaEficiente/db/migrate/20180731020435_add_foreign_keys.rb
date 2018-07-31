class AddForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :denuncias, :incidencias
    add_foreign_key :incidencias, :incidencias, column: :incidencia_padre_id, primary_key: :id
    add_foreign_key :denuncias, :unidades_policia, column: :unidad_policia_id, primary_key: :id
    add_foreign_key :evidencias, :denuncias
    add_foreign_key :testigos, :denuncias
  end
end
