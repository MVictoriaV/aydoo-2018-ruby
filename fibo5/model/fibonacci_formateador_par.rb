require_relative 'fibonacci_formateador'

class FibonacciFormateadorPar < FibonacciFormateador

  def initialize(sucession)
	super
    @sucession_con_formato = sucession
  end

  def dar_formato
  	return [2]
  end

end