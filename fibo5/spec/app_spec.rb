require_relative '../app'
require 'rspec'
require 'rack/test'

describe 'Aplicacion Sinatra' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  describe '/fibonacci/3' do
    it 'deberia devolver la serie de Fibonacci con limite 3 en formato json' do
      get '/fibonacci/3'

      expect(last_response).to be_ok
      cuerpo_parseado = JSON.parse(last_response.body)
      expect(cuerpo_parseado['fibonacci']['lista']).to eq [0, 1, 1]
    end
  end

  describe '/fibonacci/3?sentido=inverso' do
    it 'deberia devolver la serie invertida con limite 3 en formato json' do
      get '/fibonacci/3?sentido=inverso'

      expect(last_response).to be_ok
      cuerpo_parseado = JSON.parse(last_response.body)
      expect(cuerpo_parseado['fibonacci']['lista']).to eq [1, 1, 0]
    end
  end
end