require_relative 'fibonacci_formateador'
require_relative '../modules/utilitario'

class FibonacciFormateadorPar < FibonacciFormateador

  include Utilitario

  def initialize(sucession)
	super
    @sucession_con_formato = sucession
  end

  def dar_formato
   sucession_par = []
   @sucession_con_formato.each do |elemento|
    if (es_par?(elemento))
     sucession_par.push(elemento)
    end
   end
   return sucession_par
  end
end