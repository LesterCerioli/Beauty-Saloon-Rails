class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.string :customer_name
      t.date :appointment_date
      t.time :appointment_time
      t.references :customer, null: false, foreign_key: true
      t.references :attendant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
