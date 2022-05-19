class CreateUserPayload
    module Template
      CREATE_USER = YAML.load_file(File.join(File.dirname(__FILE__), '/../templates/usuario_payload.yml'))
    end
    def self.create_user_dto(value)
      user = Template::CREATE_USER.dup
      user['usuario']['email'] = value
      user
    end
  end