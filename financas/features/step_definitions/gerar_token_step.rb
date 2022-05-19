Dado('que tenha login e senha') do
    @dados_token = carregar_massa(['gerar_token'])
    @client_id = @dados_token['email']
    @client_secret = @dados_token['senha']
  
    @auth = OpenStruct.new
    @auth.client_id = @client_id
    @auth.client_secret = @client_secret
end
  
Então('sistema deve gerar um token') do
    @retorno = gerar_token.post_gerar_token()
    puts @retorno.code
    expect(@retorno.code.to_s).to eq "200"
    @access_token = @retorno['token']
    puts @access_token
end