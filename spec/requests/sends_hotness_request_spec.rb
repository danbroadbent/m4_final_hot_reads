require 'rails_helper'

describe "Sends Hotness" do
  it 'retrieves a get' do
    Read.create(url: "http://www.google.com")
    get '/api/v1/reads/'

    parsed_response = JSON.parse(response.body)[0]

    expect(response.status).to eq(200)
    expect(parsed_response['url']).to eq ("http://www.google.com")
  end
end
