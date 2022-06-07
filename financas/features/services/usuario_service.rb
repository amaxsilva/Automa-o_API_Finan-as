module CREATE_USER
    module API
      class Create_User
        include HTTParty
        # debug_output $stdout if HTTP_LOG
        base_uri CONFIG_APIREST['url']['url_default']
  
        format :json
        headers 'Content-Type' => 'application/json',
                'Accept' => 'application/json'   
                  
        def post_create_user(json_create_user)
          self.class.post('/usuario', body: json_create_user.to_json)
        end
      end
    end
  end
  