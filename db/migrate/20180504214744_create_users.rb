class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :email
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
