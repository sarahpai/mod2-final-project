class AddColumnsToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :credit_card, :boolean
    add_column :restaurants, :delivery, :boolean
    add_column :restaurants, :phone, :string
  end
end
