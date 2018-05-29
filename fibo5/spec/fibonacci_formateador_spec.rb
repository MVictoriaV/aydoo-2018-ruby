require 'rspec'
require_relative '../model/fibonacci_formateador'

describe FibonacciFormateador do
  
  it 'retorna valores pares de la serie Fibonacci con limite 3' do
    limite = 3
    fibonacci_formateador = FibonacciFormateador.new([0, 1, 1])
    expect(fibonacci_formateador.dar_formato).to eq [0, 1, 1]
  end
end