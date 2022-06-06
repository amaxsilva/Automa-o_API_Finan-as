Dado ('que existe um token válido') do 
 step "que informo login e senha"
end 

Quando('informa os dados') do
    binding.pry
    @massa = carregar_massa(['transacao'])
    value1 = @massa['valor']
    value2 = @massa['data']
    @json_transacao = TransacaoPayload.transacao_dto(value1, value2)
    @resultado = transacao.post_transacao(@json_transacao, @access_token)
    #puts @access_token

end
  
Então('o sistema deve permitir efetuar a transação') do
    

end
  
Quando('que informe os dados necessario deixando campo data em branco') do
    

end
  
Então('o sistema deve informar que o preenchimento é obrigatorio') do
    

end