require 'sinatra'
require 'sinatra/json'
require_relative './model/fibonacci'

#/fibonacci/<N>[/lista|/sumatoria][?sentido=directo|inverso][&solo=pares|impares]

get '/fibonacci/:limite' do 
	limite_de_sucesion = params['limite']
	es_inverso = (params['sentido'].nil? ? false : (params['sentido'].to_s == 'inverso'))
	fibonacci = Fibonacci.new(es_inverso, limite_de_sucesion.to_i)
	sucesion = fibonacci.sucesion
	json({"fibonacci": { "limite": limite_de_sucesion.to_i, "lista": sucesion } })
end