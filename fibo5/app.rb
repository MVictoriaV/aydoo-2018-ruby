require 'sinatra'
require 'sinatra/json'

#/fibonacci/<N>[/lista|/sumatoria][?sentido=directo|inverso][&solo=pares|impares]
get '/fibonacci/:limite' do 
	limite_de_sucesion = params['limite']
	sucesion = [0, 1, 1]
	json({"fibonacci": { "limite": limite_de_sucesion.to_i, "lista": sucesion } })
end