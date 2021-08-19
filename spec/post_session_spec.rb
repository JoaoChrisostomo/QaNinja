require_relative "routes/sessions"

describe "POST /sessions" do
  context "login com sucesso" do
    before(:all) do
        @result = Sessions.new.login("chrisos@yaho.com.br", "12345")
    end
    
    it "valida status code" do
      expect(@result.code).to eql  200
    end
    
    it "valida id do usuário" do
      expect(@result.parsed_response["_id"].length).to eql 24
    end    
  end

  context "senha invalida" do
    before(:all) do
        @result = Sessions.new.login("chrisos@yaho.com.br", "125")
    end
    
    it "valida status code" do
      expect(@result.code).to eql  401
    end
    
    it "valida id do usuário" do
      expect(@result.parsed_response["error"]).to eql "Unauthorized"
    end    
  end
end



