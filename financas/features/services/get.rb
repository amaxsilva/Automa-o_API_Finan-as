module GET
    module API
      class Get
        include HTTParty
        # debug_output $stdout if HTTP_LOG
        base_uri CONFIG_APIREST['url']['url_get']
  
        format :json
                          
        def post_get(token)
            #binding.pry
          self.class.post('/771',  headers: {'Content-Type' => 'application/json',  'Authorization' => "Bearer #{token}" })
        end
      end
    end
  end