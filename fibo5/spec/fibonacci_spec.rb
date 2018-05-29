require 'rspec'
require_relative '../model/fibonacci'

describe Fibonacci do
  
  subject { Fibonacci.new }

  it 'retorna la serie Fibonacci con limite 3' do
    limite = 3
    expect(subject.sucesion(limite)).to eq [0, 1, 1]
  end

  it 'retorna la serie Fibonacci con limite 7' do
    limite = 7
    expect(subject.sucesion(limite)).to eq [0, 1, 1, 2, 3, 5, 8]
  end
end