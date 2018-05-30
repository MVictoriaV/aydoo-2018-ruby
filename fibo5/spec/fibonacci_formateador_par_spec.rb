require 'rspec'
require_relative '../model/fibonacci_formateador_par'

describe FibonacciFormateadorPar do
  
  it 'retorna valor 2 como par de la serie Fibonacci con limite 4' do
    
    formateador = FibonacciFormateadorPar.new([0, 1, 1, 2])
    expect(formateador.dar_formato).to eq [2]

  end

  it 'retorna valores pares 2 y 8 de la serie Fibonacci con limite 7' do
    
    formateador = FibonacciFormateadorPar.new([0, 1, 1, 2, 3, 5, 8])
    expect(formateador.dar_formato).to eq [2, 8]

  end

  it 'lanza mensaje de advertencia super cuando la sucesion ingresado es nil' do
    expect { FibonacciFormateadorPar.new(nil) }.to raise_error ArgumentError, 'La sucesion no puede ser nil'
  end
end