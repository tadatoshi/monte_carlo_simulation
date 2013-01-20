require 'spec_helper'

describe MonteCarloSimulation::PiCalculation do

  before(:each) do
    @pi_calculation = MonteCarloSimulation::PiCalculation.new
  end

  it "should calculation PI using the ratio between quarter circle and square" do

    number_of_iteration = 10000
    pi_result = @pi_calculation.calculate(number_of_iteration)
    puts "pi_result: #{pi_result}"
    pi_result.should be_within(0.01).of(Math::PI)

  end

end
