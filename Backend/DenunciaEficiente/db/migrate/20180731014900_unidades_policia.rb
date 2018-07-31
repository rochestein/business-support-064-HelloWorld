class UnidadesPolicia < ActiveRecord::Migration[5.2]
  def change
    create_table :unidades_policia do |t|
      t.string :nombre
      t.timestamps null: false 
    end
  end
end
