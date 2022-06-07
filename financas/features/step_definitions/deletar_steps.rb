Então('o sistema deve permitir deletar') do
    #binding.pry
    @json_deletar = DeletarPayload.deletar_dto()
    @resultado = deletar.post_deletar(@json_deletar, @access_token)
end