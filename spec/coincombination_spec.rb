require('rspec')
require('coincombination')

describe('Float#coin_combination') do
  it("This will find the smallest amount of change for a give amount of money") do
    expect((1.05).coin_combination()).to(eq("4 quarters 0 dimes 1 nickels 0 pennies"))
  end
end
