Dado('que usuário insira os dados validos') do
  #binding.pry
  @massa = carregar_massa(['email'])
  value = @massa['email_1']
  @json_create_user = CreateUserPayload.create_user_dto(value)
  @retorno = create_user.post_create_user(@json_create_user)
  puts @retorno
end

Então('a api deve retornar sucesso') do
  expect(@retorno.code.to_s).to eq "201"
  expect(@retorno["mensagem"]).to eq "Cadastro realizado com sucesso."
end    
  
Dado('que usuário insira os dados de email existente') do
  #binding.pry
  @massa = carregar_massa(['email'])
  value = @massa['email_existente']
  @json_create_user = CreateUserPayload.create_user_dto(value)
  @retorno = create_user.post_create_user(@json_create_user)
  puts @retorno
end

Então('a api deve retornar uma msg que ja possui cadatro') do
  expect(@retorno.code.to_s).to eq "400"
  expect(@retorno["mensagem"]).to eq "Usuário já cadastrado!"
end    
  