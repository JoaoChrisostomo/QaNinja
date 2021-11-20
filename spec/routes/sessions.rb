require_relative "base_api"
class Sessions < BaseApi

  def login(payload)
    return self.class.post(
            "/sessions",
        body: payload.to_json,
        headers: {
<<<<<<< HEAD
          "Content-Type": "application/json",  
=======
          "Content-Type": "application/json",
>>>>>>> 0170d7c... adicionando o pipeline script para os testes de api
        },
      )
  end
end