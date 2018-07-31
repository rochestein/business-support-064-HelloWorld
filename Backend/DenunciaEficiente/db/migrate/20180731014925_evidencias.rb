class Evidencias < ActiveRecord::Migration[5.2]
  def change
    create_table :evidencias do |t|
      t.bigint :denuncia_id, null: false
      t.string :path_archivo
      t.string :narracion
      t.timestamps null: false
    end
  end
end
