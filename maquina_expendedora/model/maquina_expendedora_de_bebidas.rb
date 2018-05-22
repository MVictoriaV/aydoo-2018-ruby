require_relative './vaso'
require_relative './hacedor_de_cafe'
require_relative './azucarero'

class MaquinaExpendedoraDeBebidas

  def initialize
    @hacedor_de_cafe = HacedorDeCafe.new
    @azucarero = Azucarero.new
  end

  def hacer_cafe_con_leche_con_n_de_azucar(un_vaso, cantidad_azucar)
  	@hacedor_de_cafe.cargar_cafe(un_vaso)
  	@hacedor_de_cafe.cargar_leche(un_vaso)
  	@azucarero.agregar(un_vaso, cantidad_azucar)
  end

  def hacer_te_con_leche_con_n_de_azucar(un_vaso, cantidad_azucar)
  end
end
