module GERAR_TOKEN_FINANCAS
    module API
      class GerarTokenFinancas
        include HTTParty
        debug_output $stdout if HTTP_LOG
  
          def post_gerar_token_financas(
            raw = {
                "email": "user_qa@teste.com",
                "senha": "user123"
            }
          )
        #para ambiente dev apenas retirar _stage e trocar o auth abaixo
        @URL = CONFIG_APIREST['url']['token']
  
        auth = {:email => "user_qa@teste.com", :senha => "user123"}
          
        self.class.post(@URL, :basic_auth => auth, headers: { 'Content-Type' => 'application/json', 'Accept' => 'application/json' }, body: { raw: raw }.to_json )
        end
      end
    end
  end
  