class Vaso

  attr_accessor :cantidad_de_azucar
  attr_reader :contenidos_liquido

  def initialize
    @cantidad_de_azucar = 0
    preparar_vaso
  end

  def preparar_vaso
  	@contenidos_liquido = {"CAFE" => false, "TE" => false, "LECHE" => false}
  end

  def recibir_contenido_liquido(contenido)
    if @contenidos_liquido.include?(contenido)
    	@contenidos_liquido[contenido] = true
    end
  end

  def tiene_cafe?
  	return @contenidos_liquido["CAFE"]
  end

  def tiene_azucar?
  	return (@cantidad_de_azucar > 0)
  end

  def tiene_te?
  	return @contenidos_liquido["TE"]
  end
end