Então('devo conseguir efetuar a busca dos dados') do
    #binding.pry
    @retorno = get.post_get(@token)
    puts @retorno
end