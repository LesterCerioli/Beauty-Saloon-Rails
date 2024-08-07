class CreateAttendants < ActiveRecord::Migration[7.1]
  def change
    create_table :attendants do |t|
      t.string :attendant_name

      t.timestamps
    end
  end
end
