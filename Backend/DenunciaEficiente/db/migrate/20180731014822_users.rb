class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :firstname
      t.string :secondname
      t.string :firstsurname
      t.string :secondsurname

      t.timestamps
    end
  end
end
