class Evidences < ActiveRecord::Migration[5.2]
  def change
    create_table :evidences do |t|
      t.bigint :complaint_id, null: false
      t.string :path_file
      t.string :narration
      t.timestamps null: false
    end
  end
end

