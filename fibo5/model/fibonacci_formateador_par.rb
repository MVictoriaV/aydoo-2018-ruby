require_relative 'fibonacci_formateador'

class FibonacciFormateadorPar < FibonacciFormateador

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

  def es_par?(elemento)
   return (elemento != 0 && elemento % 2 == 0)
  end

end