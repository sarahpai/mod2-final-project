class AddDate < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :date, :datetime
  end
end
