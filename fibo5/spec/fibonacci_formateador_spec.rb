require 'rspec'
require_relative '../model/fibonacci_formateador'

describe FibonacciFormateador do
  
  it 'retorna la serie [0 1 1] con la que se instancio. No aplica formato' do
    
    formateador = FibonacciFormateador.new([0, 1, 1])
    expect(formateador.dar_formato).to eq [0, 1, 1]
  end

  it 'lanza mensaje de advertencia cuando la sucesion ingresado es nil' do
    expect { FibonacciFormateador.new(nil) }.to raise_error ArgumentError, 'La sucesion no puede ser nil'
  end
end