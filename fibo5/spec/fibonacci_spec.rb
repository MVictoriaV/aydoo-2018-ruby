require 'rspec'
require_relative '../model/fibonacci'

describe Fibonacci do
  
  it 'retorna la serie Fibonacci con limite 3' do
    limite = 3
    fibonacci = Fibonacci.new(limite)
    expect(fibonacci.sucesion).to eq [0, 1, 1]
  end

  it 'retorna la serie Fibonacci con limite 7' do
    limite = 7
    fibonacci = Fibonacci.new(limite)
    expect(fibonacci.sucesion).to eq [0, 1, 1, 2, 3, 5, 8]
  end

  it 'lanza mensaje de advertencia cuando el limite ingresado de la serie es -1' do
    expect { Fibonacci.new(-1) }.to raise_error ArgumentError, 'El limite de la serie debe ser un numero > 0'
  end

  #it 'retorna la serie Fibonacci invertida con limite 3' do
  #  limite = 3
  #  fibonacci = Fibonacci.new(true, limite)
  #  expect(fibonacci.sucesion).to eq [1, 1, 0]
  #end
end