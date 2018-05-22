class Vaso

  attr_reader :cantidad_de_azucar
  attr_reader :liquidos

  def initialize
    @cantidad_de_azucar = 0
    preparar_vaso
  end

  def preparar_vaso
  	@liquidos = {"CAFE" => false, "TE" => false, "LECHE" => false}
  end

  def agregar_azucar(cantidad_azucar)
  	@cantidad_de_azucar = cantidad_azucar
  end

  def agregar(contenido)
  	if @liquidos.include?(contenido)
      liquidos[contenido] = true
    end
  end

  def tiene_cafe?
  	contiene_cafe = @liquidos["CAFE"]
  	return contiene_cafe
  end
end