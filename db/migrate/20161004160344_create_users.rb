class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :typeOfUser
      t.string :image
      t.string :userBio
      t.string :emailAddress
      t.string :nameOfUser

      t.timestamps
    end
  end
end
