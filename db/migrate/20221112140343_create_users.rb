class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.text :description
      t.string :area
      t.datetime :birthday
      t.string :password
      t.timestamps
    end
  end
end
