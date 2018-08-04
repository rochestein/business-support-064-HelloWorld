class UnidadesPolicias < ActiveRecord::Migration[5.2]
  def change
    create_table :unidades_policias do |t|
      t.string :nombre
      t.timestamps null: false 
    end
  end
end
