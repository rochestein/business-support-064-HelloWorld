class WitnessEvidences < ActiveRecord::Migration[5.2]
  def change
    create_table :witness_evidences do |t|
      t.belongs_to :witness, index: true, foreign_key: true
      t.string :path_file
      t.string :narration
      t.timestamps null: false
    end
  end
end
