require 'rails_helper'

describe "Recieves a read" do
  it 'retrieves a read' do

    read = JSON.generate(url: "http://www.google.com")

    post '/api/v1/reads/',
      params: read,
      headers: {'Content-type': 'application/json'}

    expect(response.status).to eq(201)
    expect(Read.last.url).to eq ("http://www.google.com")
  end
end
