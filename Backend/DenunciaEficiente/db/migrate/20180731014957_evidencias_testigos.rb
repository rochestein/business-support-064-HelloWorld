class EvidenciasTestigos < ActiveRecord::Migration[5.2]
  def change
    create_table :evidencias_testigos do |t|
      t.belongs_to :testigos, index: true, foreign_key: true
      t.string :path_archivo
      t.string :narracion
      t.timestamps null: false
    end
  end
end
