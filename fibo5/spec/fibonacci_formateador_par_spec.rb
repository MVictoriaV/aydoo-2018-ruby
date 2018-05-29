require 'rspec'
require_relative '../model/fibonacci_formateador_par'

describe FibonacciFormateadorPar do
  
  it 'retorna valor 2 como par de la serie Fibonacci con limite 4' do
    
    formateador = FibonacciFormateadorPar.new([0, 1, 1, 2])
    expect(formateador.dar_formato).to eq [2]

  end
end