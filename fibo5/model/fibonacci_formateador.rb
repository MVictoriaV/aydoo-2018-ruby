class FibonacciFormateador

  attr_reader :sucession_con_formato

  def initialize(sucession)
  	if (sucession.nil?)
      raise ArgumentError.new('La sucesion no puede ser nil')
    end
    @sucession_con_formato = sucession
  end

  def dar_formato
  	@sucession_con_formato
  end
end