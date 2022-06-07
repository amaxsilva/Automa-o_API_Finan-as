module LOGIN
    module API
      class Login
        include HTTParty
        # debug_output $stdout if HTTP_LOG
        base_uri CONFIG_APIREST['url']['url_default']
  
        format :json
        headers 'Content-Type' => 'application/json',
                'Accept' => 'application/json'   
                  
        def post_login(json_login)
          self.class.post('/usuario/login', body: json_login.to_json)
        end
      end
    end
  end