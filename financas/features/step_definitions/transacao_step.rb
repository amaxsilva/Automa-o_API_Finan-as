Dado ('que existe um token válido') do 
 step "que informo login e senha"
 puts @token
end 

Quando('informa os dados') do
    #binding.pry
    @massa = carregar_massa(['transacao'])
    value1 = @massa['valor']
    value2 = @massa['data']
    @json_transacao = TransacaoPayload.transacao_dto(value1, value2)
    @resultado = transacao.post_transacao(@json_transacao, @token)
end
  
Então('o sistema deve permitir efetuar a transação') do
    expect(@resultado.code.to_s).to eq "201"
    expect(@resultado["mensagem"]).to eql "Cadastro realizado com sucesso."
end
  
Quando('que informe os dados necessario deixando campo data em branco') do
    #binding.pry
    @massa = carregar_massa(['transacao'])
    value1 = @massa['valor']
    value2 = @massa['vazio']
    @json_transacao = TransacaoPayload.transacao_dto(value1, value2)
    @resultado = transacao.post_transacao(@json_transacao, @token)
end
  
Então('o sistema deve informar que o preenchimento é obrigatorio') do
    expect(@resultado.code.to_se).to eql "400"
    expect(@resultado["mensagem"]).to eql "Data de vencimento inválida"

end