require_relative '../app'
require 'rspec'
require 'rack/test'

describe 'Aplicacion Sinatra' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  describe '/fibonacci/5' do
    it 'deberia devolver la lista de Fibonacci con limite 5 en formato json' do
      get '/fibonacci/5'

      expect(last_response).to be_ok
      cuerpo_parseado = JSON.parse(last_response.body)
      expect(cuerpo_parseado['fibonacci']['limite']).to eq 5
      expect(cuerpo_parseado['fibonacci']['lista']).to eq [0, 1, 1, 2, 3]
    end
  end

  describe '/fibonacci/5/sumatoria' do
    it 'deberia devolver la sumatoria con valor 7 y limite 5 en formato json' do
      get '/fibonacci/5/sumatoria'

      expect(last_response).to be_ok
      cuerpo_parseado = JSON.parse(last_response.body)
      expect(cuerpo_parseado['fibonacci']['limite']).to eq 5
      expect(cuerpo_parseado['fibonacci']['sumatoria']).to eq 7
    end
  end

  describe '/fibonacci/5?sentido=inverso' do
    it 'deberia devolver la lista invertida con 5 valores de la serie de Fibonacci y un limite 5 en formato json' do
      get '/fibonacci/5?sentido=inverso'

      expect(last_response).to be_ok
      cuerpo_parseado = JSON.parse(last_response.body)
      expect(cuerpo_parseado['fibonacci']['limite']).to eq 5
      expect(cuerpo_parseado['fibonacci']['lista']).to eq [3, 2, 1, 1, 0]
    end
  end
end