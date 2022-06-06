class TransacaoPayload
    module Template
      TRANSACAO = YAML.load_file(File.join(File.dirname(__FILE__), '/../templates/transacao_payload.yml'))
    end
    def self.transacao_dto(value1, value2)
      valor = Template::TRANSACAO.dup
      valor['transacao']['valor'] = value1
      valor['transacao']['dataVencimento'] = value2
      valor
    end
  end