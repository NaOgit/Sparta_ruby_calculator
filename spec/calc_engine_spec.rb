# https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
require 'spec_helper'

describe "Testing the calc engine" do

  before(:all) do
    @calc = CalcEngine.new()
  end

  it "should add two numbers together" do
    expect(@calc.addition(1,1)).to eq(2)
  end

  it "should subtract two numbers" do
    expect(@calc.subtraction(1,1)).to eq(0)
  end

  it "should multiply two numbers" do
    expect(@calc.multiplication(4,2)).to eq(8)
  end

  it "should divide two numbers" do
    expect(@calc.division(6,3)).to eq(2)
  end

  it "should do indices" do
    expect(@calc.advance_power(3,2)).to eq(9)
  end

  it "should square root a number" do
    expect(@calc.advance_sqroot(16)).to eq(4)
  end

  it "should calculate BMI using the metric systems" do
    expect(@calc.bmi_metric(65, 1.75)).to eq(21.2)
  end

  it "should calculate BMI using the imperial system" do
    expect(@calc.bmi_imperial(88, 60)).to eq(17.2)
  end

  it "should calculate trip cost and time" do
    expect(@calc.trip_calc(20, 60, 4, 60)).to eq(0.3, 80.0)
  end

end
