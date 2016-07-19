class AddProviderIdToRides < ActiveRecord::Migration[5.0]
  def change
    add_reference :rides, :provider, index: true
    add_foreign_key :rides, :providers
  end
end
