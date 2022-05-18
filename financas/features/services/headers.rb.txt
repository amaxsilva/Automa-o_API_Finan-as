#Modulo com nome da API
module AUTOMATIC_COLLISION
    module API
        #Classe com nome da api para montar o headers
      class AutomaticCollision
        include HTTParty
        #configuração da URl para acesso a API
        base_uri CONFIG_APIREST['honda']['url_notification']
        #Informar que usaremos formato json e passar os valores do headers
        format :json
        headers 'Content-Type' => 'application/json',
                'Accept' => 'application/json',
                'Accept-Encoding' => 'deflate, br',
                'Connection' => 'keep-alive',
                'Content-Length' => '29',
                'Host' => 'ads-honda-carconnect-api-vehicle-data-hub.develop.stefanini.io',
                'X-Product-Own-Id' => '1006000000000003',
                'X-Event-Id' => '1234567890',
                'X-Notification-Time' => '2020-12-11T03:19:09+00:00',
                'Cache-Control' => 'no-cache',
                'Cookie' => 'JSESSIONID=node012rsx0iszdoc81mn7dg5xpr4aq15.node0',
                'Accept-Charset' => 'iso-8859-1'
        #Criamos um metodo com prefacio de post_nome_da_api, dentro dela passamos o json que queremos e o token caso tenha, seguir o modelo abaixo
        def post_automatic_collision(json_automatic_collision, access_token)
          self.class.post('/automatic-collision-notification', body: json_automatic_collision.to_json, headers: { 'Authorization' => "Bearer #{access_token}" })
        end
      end
    end
  end