module DELETAR
    module API
      class Deletar
        include HTTParty
        # debug_output $stdout if HTTP_LOG
        base_uri CONFIG_APIREST['url']['url_default']
  
        format :json
                          
        def post_deletar(json_deletar, token)
          #binding.pry
          self.class.post('/transacao/761', body: json_deletar.to_json,  headers: {'Content-Type' => 'application/json',  'Authorization' => "Bearer #{token}" })
        end
      end
    end
  end