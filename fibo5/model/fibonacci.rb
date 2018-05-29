require_relative '../modules/sumador'

class Fibonacci

  include Sumador
  attr_reader :sucesion
  attr_reader :limite_sucesion

  def initialize(es_invertido=false, limite)
    if (limite.nil? or limite < 1)
      raise ArgumentError.new('El limite de la serie debe ser un numero > 0')
    end
    @limite_sucesion = limite
    calcular_serie()
    invertir_serie(es_invertido)
  end

 private
 def calcular_serie()
  serie = Array.new()
  primer_valor = 0
  segundo_valor = 1
  @limite_sucesion.times do
    serie.push(primer_valor)
    primer_valor,segundo_valor = segundo_valor,primer_valor+segundo_valor
  end
  @sucesion = serie
 end

 private
 def invertir_serie(es_invertido)
  if es_invertido
    listado_invertido = Array.new
    for i in (@limite_sucesion-1).downto(0)
     listado_invertido.push(sucesion[i])
    end
    @sucesion = listado_invertido
  end
 end
end