require 'rest-client'

module ApiWrapper
  def api_create_user(user)

    response = RestClient.post "https://testautomate.me/redmine/users.json",
                               {
                                 "user": {
                                   "login": user[:name],
                                   "firstname": "Test",
                                   "lastname": "User",
                                   "mail": "#{user[:name]}@test.org",
                                   "password": user[:pass]
                                 }
                               }.to_json,
                               api_headers

    raise "User was not created via API, Response code was #{response.code}" unless response.code == 201
  end

  def api_headers
    { content_type: :json, 'x-redmine-api-key': 'a1d9fb9bada2e98faa7f8164dc17f9128633da7b' }
  end

end

World(ApiWrapper)