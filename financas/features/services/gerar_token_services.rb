# module GERAR_TOKEN_FINANCAS
#     module API
#       class GerarTokenFinancas
#         include HTTParty
#         debug_output $stdout if HTTP_LOG
  
#           def post_gerar_token_financas(
#             raw = %{
#                 "email": "user_qa@teste.com",
#                 "senha": "user123"
#             }
#           )
#         @URL = CONFIG_APIREST['url']['token']
          
#         self.class.post(@URL, headers: {'Content-Type' => 'application/json', 'Content-Length' => '3948' }, body: {raw: raw}.to_json)
#         end
#       end
#     end
#   end

module TOKEN
    module API
      class Token
        include HTTParty
        debug_output $stdout if HTTP_LOG
        base_uri CONFIG_APIREST['url']['token']

        format :json
        headers 'Content-Type' => 'application/json',
								'Accept' => '*/*',
                'Accept-Encoding' => 'gzip, deflate, br',
								'Connection' => 'keep-alive'

      def post_token(body)
        self.class.post('/usuario/login', body: body.to_json)
      end
    end
  end
end

  