require 'rspec'
require_relative '../model/fibonacci_formateador_impar'

describe FibonacciFormateadorImpar do
  
  it 'retorna valores [0, 1, 1] como impares de la serie Fibonacci con limite 4' do
    
    formateador = FibonacciFormateadorImpar.new([0, 1, 1, 2])
    expect(formateador.dar_formato).to eq [0, 1, 1]
  end
end