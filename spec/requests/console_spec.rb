require 'rspec'
require 'rails_helper'

describe 'Consoles Request' do
  describe 'GET /consoles' do
    it 'returns an array of the consoles' do
      get('/consoles')
      expect { JSON.parse(response.body) }.not_to raise_error
    end

    it 'supports specifying consoles for a specific manufacturer' do
      get('/consoles', params: { manufacturer: 'Nintendo' })
      expect { JSON.parse(response.body) }.not_to raise_error
    end
  end
end
