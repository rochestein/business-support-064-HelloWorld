class Witnesses < ActiveRecord::Migration[5.2]
  def change
    create_table :witnesses do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.bigint :complaint_id, null: false
      t.timestamps null: false
    end
  end
end
