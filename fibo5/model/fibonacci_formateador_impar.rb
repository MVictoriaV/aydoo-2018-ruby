require_relative 'fibonacci_formateador'
require_relative '../modules/utilitario'

class FibonacciFormateadorImpar < FibonacciFormateador

  include Utilitario

  def initialize(sucession)
	super
    @sucession_con_formato = sucession
  end

  def dar_formato
   sucession_impar = []
   @sucession_con_formato.each do |elemento|
    unless (es_par?(elemento))
     sucession_impar.push(elemento)
    end
   end
   return sucession_impar
  end
end