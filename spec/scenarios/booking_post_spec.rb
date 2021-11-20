describe 'POST /equipos/{equipo_id}/bookings' do
  before(:all) do
<<<<<<< HEAD
    payload = { email: "piter@gmail.com", password: "123" }
=======
    payload = { email: "piter@gmail.com", password: "pwd123" }
>>>>>>> 0170d7c... adicionando o pipeline script para os testes de api
    result = Sessions.new.login(payload)
    @piter_id = result.parsed_response["_id"]
  end

  context "solicitar locacao" do

    before(:all) do

      # dado que "Joe Perry" tem um "Fender Strato" para locação
<<<<<<< HEAD
      result = Sessions.new.login({email: "joe123@gmail.com", password: "123"})
=======
      result = Sessions.new.login({email: "joe123@gmail.com", password: "pwd123"})
>>>>>>> 0170d7c... adicionando o pipeline script para os testes de api
      joe_id = result.parsed_response["_id"]

      fender = {
        thumbnail: Helpers::get_thumb("fender-sb.jpg"),
        name: "Fender Strato",
        category: "Cordas",
        price: 150,
      }
      MongoDB.new.remove_equipo(fender[:name], joe_id)

      result = Equipos.new.create(fender, joe_id)
      fender_id = result.parsed_response["_id"]

      # quando solicito a locação da Fender do Joe Perry
      @result = Equipos.new.booking(fender_id, @piter_id)
    end

    it "deve retornar 200" do
      expect(@result.code).to eq 200
     end
  end
end

