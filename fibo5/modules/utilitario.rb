module Utilitario

  def es_par?(un_elemento)
  	if (un_elemento.nil?)
      raise ArgumentError.new('El elemento ingresado no puede ser nil')
    end
   return (un_elemento != 0 && un_elemento % 2 == 0)
  end
end