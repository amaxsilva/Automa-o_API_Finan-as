class TokenPayload
    module Template
      TOKEN = YAML.load_file(File.join(File.dirname(__FILE__), '/../templates/token_payload.yml'))
    end
    def self.token_dto(client_id, client_secret)
      token = Template::TOKEN.dup
      token['email'] = client_id
      token['senha'] = client_secret
      token
    end
  end