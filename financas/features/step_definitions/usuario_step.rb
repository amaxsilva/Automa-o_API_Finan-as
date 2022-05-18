Dado('que usuário insira os dados validos') do
    binding.pry
  @massa = carregar_massa(['email'])
  value = @massa['email_1']
  @json_create_user = CreateUserPayload.create_user_dto(value)
  @retorno = create_user.post_create_user(@json_create_user)
end

Então('a api deve retornar sucesso') do

end    
  
Dado('que usuário insira os dados de email invalidos') do
  @dados_token = carregar_massa(['velocity'])
  value = @dados_token['value']
  @json_automatic_collision = AutomaticCollisionPayload.automatic_collision_dto(value)
  @retorno = automatic_collision.post_automatic_collision(@json_automatic_collision, @access_token)
end

Então('a api deve retornar error') do

end    
  