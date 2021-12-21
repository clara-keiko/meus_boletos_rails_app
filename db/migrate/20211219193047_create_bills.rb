class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :nome
      t.string :usuario
      t.string :senha
      t.integer :data_de_vencimento
      t.string :link_para_o_boleto
      t.string :obs

      t.timestamps
    end
  end
end
