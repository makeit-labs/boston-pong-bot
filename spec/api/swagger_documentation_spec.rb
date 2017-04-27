require 'spec_helper'

describe Api do
  include Api::Test::EndpointTest

  context 'swagger root' do
    subject do
      get '/api/swagger_doc'
      JSON.parse(last_response.body)
    end
    it 'documents root level apis' do
      expect(subject['paths'].keys.sort).to eq [
        '/api/challenges',
        '/api/challenges/{id}',
        '/api/games',
        '/api/games/{id}',
        '/api/matches',
        '/api/matches/{id}',
        '/api/seasons',
        '/api/seasons/current',
        '/api/seasons/{id}',
        '/api/status',
        '/api/users',
        '/api/users/{id}'
      ]
    end
  end

  context 'users' do
    subject do
      get '/api/swagger_doc/users'
      JSON.parse(last_response.body)
    end
    it 'documents users apis' do
      expect(subject['paths'].keys.sort).to eq [
        '/api/users',
        '/api/users/{id}'
      ]
    end
  end
end
