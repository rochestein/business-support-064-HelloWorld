class Mer < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :login, null: false
      t.string :primer_nombre, null: false
      t.string :segundo_ombre
      t.string :primer_apellido, null: false
      t.string :segundo_apellido
      t.timestamps null: false
    end
    
    create_table :incidencias do |t|
      t.string :nombre, null: false
      t.text :descripcion, null: false
      t.bigint :incidencia_padre_id
      t.timestamps null: false 
    end

    create_table :unidades_policia do |t|
      t.string :nombre
      t.timestamps null: false 
    end

    create_table :denuncias do |t|
      t.belongs_to :usuario, index: true, foreign_key: true
      t.bigint :incidencia_id, null: false
      t.bigint :unidad_policia_id, null: false
      t.string :ubicacion, null: false
      t.timestamp :fecha_incidencia, null: false
      t.timestamps null: false
    end    

    create_table :evidencias do |t|
      t.bigint :denuncia_id, null: false
      t.string :path_archivo
      t.string :narracion
      t.timestamps null: false
    end

    create_table :testigos do |t|
      t.belongs_to :usuario, index: true, foreign_key: true
      t.bigint :denuncia_id, null: false
      t.timestamps null: false
    end

    create_table :evidencias_testigos do |t|
      t.belongs_to :testigos, index: true, foreign_key: true
      t.string :path_archivo
      t.string :narracion
      t.timestamps null: false
    end

    add_foreign_key :denuncias, :incidencias
    add_foreign_key :incidencias, :incidencias, column: :incidencia_padre_id, primary_key: :id
    add_foreign_key :denuncias, :unidades_policia, column: :unidad_policia_id, primary_key: :id
    add_foreign_key :evidencias, :denuncias
    add_foreign_key :testigos, :denuncias

  end
end
