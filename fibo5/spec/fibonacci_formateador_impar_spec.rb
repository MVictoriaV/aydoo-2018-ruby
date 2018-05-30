require 'rspec'
require_relative '../model/fibonacci_formateador_impar'

describe FibonacciFormateadorImpar do
  
  it 'retorna valores [1, 1] como impares de la serie Fibonacci con limite 4' do
    
    formateador = FibonacciFormateadorImpar.new([0, 1, 1, 2])
    expect(formateador.dar_formato).to eq [1, 1]

  end

  it 'retorna valores [1, 1, 3, 5] impares de la serie Fibonacci con limite 7' do
    
    formateador = FibonacciFormateadorImpar.new([0, 1, 1, 2, 3, 5, 8])
    expect(formateador.dar_formato).to eq [1, 1, 3, 5]

  end
end