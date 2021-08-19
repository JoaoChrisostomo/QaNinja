require "httparty"

class Sessions
  include HTTParty
  base_uri "http://rocklov-api:3333"

  def login(email, pass)
    payload = { email: email, password: pass }

    return self.class.post(
                 "/sessions",
                  body: payload.to_json,
                  headers: {
                    "Content-type": "application/json",
             },
           )
  end
end