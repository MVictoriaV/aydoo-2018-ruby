require 'sinatra'
require 'sinatra/json'
require_relative './model/fibonacci'
require_relative './model/fibonacci_formateador_impar'
require_relative './model/fibonacci_formateador_par'

#/fibonacci/<N>[/lista|/sumatoria][?sentido=directo|inverso][&solo=pares|impares]

get '/fibonacci/:limite/sumatoria' do 

	limite_de_sucesion = params['limite']
	fibonacci = Fibonacci.new(limite_de_sucesion.to_i)
	fibonacci_sumatoria = fibonacci.extend(Sumador)
	fibonacci = fibonacci.extend(Sumador)
	sumatoria_serie = fibonacci.sumatoria(fibonacci.sucesion)
	json({"fibonacci": { "limite": limite_de_sucesion.to_i, "sumatoria": sumatoria_serie } })
end

get '/fibonacci/:limite' do 
	limite_de_sucesion = params['limite']
	es_inverso = (params['sentido'].nil? ? false : (params['sentido'].to_s == 'inverso'))
	fibonacci = Fibonacci.new(es_inverso, limite_de_sucesion.to_i)
	sucesion = fibonacci.sucesion

	opcion_par = (params['solo'].nil? ? false : (params['solo'].to_s == 'pares'))
	opcion_impar = (params['solo'].nil? ? false : (params['solo'].to_s == 'impares'))
	if opcion_par		
		formater_par = FibonacciFormateadorPar.new(fibonacci.sucesion)
		sucesion = formater_par.dar_formato
	elsif opcion_impar
		formater_impar = FibonacciFormateadorImpar.new(sucesion)
		sucesion = formater_impar.dar_formato
	end
	json({"fibonacci": { "limite": limite_de_sucesion.to_i, "lista": sucesion } })
end
