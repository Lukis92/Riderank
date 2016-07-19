class AddUserIdToRides < ActiveRecord::Migration[5.0]
  def change
    add_reference :rides, :user, index: true
    add_foreign_key :rides, :users
  end
end
