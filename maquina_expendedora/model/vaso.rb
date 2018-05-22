class Vaso

  attr_reader :cantidad_de_azucar
  attr_reader :contenidos_liquido

  def initialize
    @cantidad_de_azucar = 0
    preparar_vaso
  end

  def preparar_vaso
  	@contenidos_liquido = {"CAFE" => false, "TE" => false, "LECHE" => false}
  end

  def agregar_azucar(cantidad_azucar)
  	@cantidad_de_azucar = cantidad_azucar
  end

  def agregar(contenido)
  	if @contenidos_liquido.include?(contenido)
      @contenidos_liquido[contenido] = true
    end
  end

  def tiene_cafe?
  	contiene_cafe = @contenidos_liquido["CAFE"]
  	return contiene_cafe
  end

  def tiene_azucar?
  	return (@cantidad_de_azucar > 0)
  end
end