Dado('que tenha login e senha') do
    @dados_token = carregar_massa(['gerar_token'])
    @client_id = @dados_token['email']
    @client_secret = @dados_token['senha']
  
    @body = OpenStruct.new
    @body.client_id = @client_id
    @body.client_secret = @client_secret
    @body.client_authentication = 'send_as_basic_auth_header'
end
  
Então('sistema deve gerar um token') do
    @body = TokenPayload.token_dto(@client_id, @client_secret)
    @retorno = token.post_token(@body)
    @access_token = @retorno['token']
    puts @access_token
end

