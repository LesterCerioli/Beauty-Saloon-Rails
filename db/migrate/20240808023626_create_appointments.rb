class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.string :customer_name, null: false
      t.date :appointment_date, null: false
      t.time :appointment_time, null: false
      t.string :attendant_name, null: false
      t.references :customer, null: false, foreign_key: true
      t.references :attendant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
