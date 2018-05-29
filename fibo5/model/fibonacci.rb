class Fibonacci

  attr_reader :sucesion

  def initialize(es_invertido=false, limite)
    if (limite.nil? or limite < 1)
      raise ArgumentError.new('El limite de la serie debe ser un numero > 0')
    end
    calcular_serie(limite)
    invertir_serie(es_invertido)
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
  @sucesion = serie
 end

 private
 def invertir_serie(es_invertido)
  if es_invertido
    @sucesion = [1, 1, 0]    
  end
 end
end