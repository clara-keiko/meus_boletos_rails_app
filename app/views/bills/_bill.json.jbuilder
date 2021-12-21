json.extract! bill, :id, :nome, :usuario, :senha, :data_de_vencimento, :link_para_o_boleto, :obs, :created_at, :updated_at
json.url bill_url(bill, format: :json)
