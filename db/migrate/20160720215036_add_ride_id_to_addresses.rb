class AddRideIdToAddresses < ActiveRecord::Migration[5.0]
  def change
    add_reference :addresses, :ride, index: true
    add_foreign_key :addresses, :rides
  end
end
