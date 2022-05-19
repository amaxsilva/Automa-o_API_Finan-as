module GERAR_TOKEN
    module API
      class GerarToken
        include HTTParty
        debug_output $stdout if HTTP_LOG
  
          def post_gerar_token(
            raw = %{
                "email": "user_qa@teste.com",
                "senha": "user123"
            }
        )
  
        #para ambiente dev apenas retirar _stage e trocar o auth abaixo
        @URL = CONFIG_APIREST['url']['url_default']
  
        auth = {:username => "user_qa@teste.com", :password => "user123"}
          
        self.class.post(@URL, :basic_auth => auth, headers: { 'Content-Type' => 'application/json', 'Content-Length' => '3948' }, body: { query: query, variables: variables }.to_json )
        end
      end
    end
  end
  