require_relative "routes/signup"
require_relative "routes/sessions"
require_relative "routes/equipos"

require_relative "libs/mongo"
require_relative "helpers"
<<<<<<< HEAD
=======
require "digest/md5"

def to_md5(pass)
    return Digest::MD5.hexdigest(pass)
end

>>>>>>> 0170d7c... adicionando o pipeline script para os testes de api

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
<<<<<<< HEAD
=======

  config.before(:suite) do
    users = [
      { name: "batman", email: "batman@yahoo.com.br", password: to_md5("pwd123") },
      { name: "chrisostomo", email: "chrso@yahoo.com.br", password: to_md5("123") },
      { name: "penelope", email: "penelope@gmail.com", password: to_md5("123") },
      { name: "joe", email: "joe123@gmail.com", password: to_md5("pwd123") },
      { name: "piter", email: "piter@gmail.com", password: to_md5("pwd123") },
      { name: "jamesbond", email: "bond@gmail.com", password: to_md5("123") },
    ]

    MongoDB.new.drop_danger
    MongoDB.new.insert_users(users)
  end
>>>>>>> 0170d7c... adicionando o pipeline script para os testes de api
end
