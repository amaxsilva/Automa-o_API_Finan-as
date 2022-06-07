class DeletarPayload
    module Template
      DELETAR = YAML.load_file(File.join(File.dirname(__FILE__), '/../templates/deletar_payload.yml'))
    end
    def self.deletar_dto()
      deletar = Template::DELETAR.dup
    end
  end