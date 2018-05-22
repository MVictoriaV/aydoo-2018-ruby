require_relative './cafetero'
require_relative './lechero'

class HacedorDeCafe

  def initialize
    @cafetero = Cafetero.new
    @lechero = Lechero.new
  end

  def cargar_cafe(un_vaso)
  	@cafetero.cargar(un_vaso)
  end

  def cargar_leche(un_vaso)
  	@lechero.cargar(un_vaso)
  end 
end
