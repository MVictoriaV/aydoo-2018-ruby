class Fibonacci

 def sucesion(limite)
 	calcular_serie(limite)
 end

 private
 def calcular_serie(limite)
  serie = Array.new()
  primer_valor = 0
  segundo_valor = 1
  limite.times do
    serie.push(primer_valor)
    primer_valor,segundo_valor = segundo_valor,primer_valor+segundo_valor
  end
  return serie
 end

end