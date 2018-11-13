class AddPartySizeColumnToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :party_size, :integer
  end
end
