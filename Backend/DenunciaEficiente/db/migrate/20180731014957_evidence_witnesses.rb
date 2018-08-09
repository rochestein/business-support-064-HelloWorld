class EvidenceWitnesses < ActiveRecord::Migration[5.2]
  def change
    create_table :evidence_witnesses do |t|
      t.belongs_to :witnesses, index: true, foreign_key: true
      t.string :path_file
      t.string :narration
      t.timestamps null: false
    end
  end
end
