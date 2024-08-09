class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :nome_completo, null: false
      t.string :cpf, null: false, unique: true
      t.date :data_nascimento, null: false
      t.string :email, null: false
      t.string :numero_telefone, null: false

      t.timestamps
    end

    
    add_index :customers, :cpf, unique: true
  end
end
