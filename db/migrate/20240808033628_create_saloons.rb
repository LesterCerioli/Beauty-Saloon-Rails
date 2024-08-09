class CreateSaloons < ActiveRecord::Migration[7.1]
  def change
    create_table :saloons do |t|
      t.string :legal_name
      t.string :full_address
      t.string :telephone_nmber
      t.string :email

      t.timestamps
    end
  end
end
