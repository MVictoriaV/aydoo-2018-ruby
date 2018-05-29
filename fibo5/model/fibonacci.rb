class Fibonacci

  attr_reader :sucesion

  def initialize(es_invertido=false, limite)
    if (limite.nil? or limite < 1)
      raise ArgumentError.new('El limite de la serie debe ser un numero > 0')
    end
    @invertido = es_invertido
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
  @sucesion = serie
 end

end