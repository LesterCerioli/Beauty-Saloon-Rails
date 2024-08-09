class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :full_address, null: false
      t.string :address_number, null: false
      t.string :complement, null: false
      t.string :district, null: false
      t.references :customer, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
