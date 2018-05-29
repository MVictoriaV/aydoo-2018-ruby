require 'rspec'
require_relative '../model/fibonacci'

describe Fibonacci do
  
  subject { Fibonacci.new }

  it 'retorna la serie Fibonacci con limite 3' do
    limite = 3

    serie = [0, 1, 1]
    expect(subject.sucesion(limite)).to eq serie
  end
end