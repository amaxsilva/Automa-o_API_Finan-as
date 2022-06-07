module TRANSACAO
    module API
      class Trasacao
        include HTTParty
        # debug_output $stdout if HTTP_LOG
        base_uri CONFIG_APIREST['url']['url_default']
  
        format :json
                          
        def post_transacao(json_transacao, token)
          self.class.post('/transacao', body: json_transacao.to_json,  headers: {'Content-Type' => 'application/json',  'Authorization' => "Bearer #{token}" })
        end
      end
    end
  end