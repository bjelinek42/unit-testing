require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def sqaure(number)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end

    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end
  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(8, 3)
      expect(result).to eq(5)
    end
    it 'should return the difference of two numbers with one negative' do
      calculator = Calculator.new
      result = calculator.subtract(10, -5)
      expect(result).to eq(15)
    end
    it 'should return the difference of two numbers with two negatives' do
      calculator = Calculator.new
      result = calculator.subtract(-5, -8)
      expect(result).to eq(3)
    end
    it 'should return the difference of two numbers if difference is negative' do
      calculator = Calculator.new
      result = calculator.subtract(6, 10)
      expect(result).to eq(-4)
    end
  end
  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(5, 8)
      expect(result).to eq(40)
    end
    it 'should return the product of two numbers if one is negative' do
      calculator = Calculator.new
      result = calculator.multiply(7, -10)
      expect(result).to eq(-70)
    end
    it 'should return the product of two numbers if both are negative' do
      calculator = Calculator.new
      result = calculator.multiply(-4, -9)
      expect(result).to eq(36)
    end
  end
  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(20, 5)
      expect(result).to eq(4)
    end
    it 'should return the quotient of two numbers if one is negative' do
      calculator = Calculator.new
      result = calculator.divide(36, -6)
      expect(result).to eq(-6)
    end
    it 'should return the quotient of two numbers if both are negative' do
      calculator = Calculator.new
      result = calculator.divide(-42, -6)
      expect(result).to eq(7)
    end
  end
  describe '#square'
    it 'should return the product of the number with itself' do
      calculator = Calculator.new
      result = calculator.square(4)
      expect(result).to eq(16)
    end
    it 'should return the product of the number with itself if negative' do
      calculator = Calculator.new
      result = calculator.square(-9)
      expect(result).to eq(81)
    end
  end
  describe '#power' do
    it 'should return the first number to the power of the second number' do
      calculator = Calculator.new
      result = calculator.power(6, 7)
      expect(result).to eq(279936)
    end
  end
# end