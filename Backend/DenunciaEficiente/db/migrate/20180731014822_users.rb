class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password, null: false
      t.string :firstname, null: false
      t.string :secondname
      t.string :firstsurname, null: false
      t.string :secondsurname      
      t.timestamps null: false
    end
  end
end
