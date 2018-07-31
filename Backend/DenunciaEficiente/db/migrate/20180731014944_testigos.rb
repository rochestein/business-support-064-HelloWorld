class Testigos < ActiveRecord::Migration[5.2]
  def change
    create_table :testigos do |t|
      t.belongs_to :usuario, index: true, foreign_key: true
      t.bigint :denuncia_id, null: false
      t.timestamps null: false
    end
  end
end
