class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :nome_completo
      t.string :cpf
      t.date :data_nascimento
      t.string :email
      t.string :numero_telefone

      t.timestamps
    end
  end
end
