class CreateRides < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.float :price, null: false
      t.float :distance, null: false

      t.timestamps null: false
    end
  end
end
