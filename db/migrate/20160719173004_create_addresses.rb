class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street, null: false
      t.string :city, null: false
      t.string :country, null: false

      t.timestamps null: false
    end
  end
end
