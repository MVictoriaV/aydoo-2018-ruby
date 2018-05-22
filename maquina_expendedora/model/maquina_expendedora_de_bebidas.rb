require_relative './vaso'
require_relative './hacedor_de_cafe'

class MaquinaExpendedoraDeBebidas

  def initialize
    @hacedor_de_cafe = HacedorDeCafe.new
  end

  def hacer_cafe_con_leche_con_n_de_azucar(un_vaso, cantidad_azucar)
  	un_vaso.agregar_azucar(cantidad_azucar)
  	@hacedor_de_cafe.cargar_cafe(un_vaso)

  end

end
