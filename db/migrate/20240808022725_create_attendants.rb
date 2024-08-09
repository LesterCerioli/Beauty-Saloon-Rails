class CreateAttendants < ActiveRecord::Migration[7.1]
  def change
    create_table :attendants do |t|
      t.string :attendant_name, null: false  # Campo não pode ser nulo

      t.timestamps
    end
  end
end
