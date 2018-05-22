require_relative './tetero'
require_relative './lechero'

class HacedorDeTeConLeche

  def initialize
    @tetero = Tetero.new
    @lechero = Lechero.new
  end

  def cargar(un_vaso)
    cargar_te(un_vaso)
    cargar_leche(un_vaso)
  end

  private 
  def cargar_leche(un_vaso)
  	@lechero.cargar(un_vaso)
  end

  def cargar_te(un_vaso)
    @tetero.cargar(un_vaso)
  end
end
