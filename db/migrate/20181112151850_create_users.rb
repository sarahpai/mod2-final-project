class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :profile_picture
      t.string :user_name

      t.timestamps
    end
  end
end
