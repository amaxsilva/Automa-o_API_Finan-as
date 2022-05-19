class LoginPayload
    module Template
      LOGIN = YAML.load_file(File.join(File.dirname(__FILE__), '/../templates/login_payload.yml'))
    end
    def self.login_dto(value)
      login = Template::LOGIN.dup
      login['email'] = value
      login
    end
  end