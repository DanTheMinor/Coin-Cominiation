require('rspec')
require('coincombination')

describe('Float#coin_combination') do
  # it("This will convert your amount to quarters") do
  #   expect((0.25).coin_combination()).to(eq("1 quarters"))
  # end
  #
  # it("Will convert your amount to quarters and dimes.") do
  #   expect((0.60).coin_combination()).to(eq("2 quarters 1 dimes"))
  # end
  #
  # it("Will convert your amount to quarters, dimes and nickels") do
  #   expect((0.90).coin_combination()).to(eq("3 quarters 1 dimes 1 nickels"))
  # end

  it("This will find the smallest amount of change for a give amount of money") do
    expect((1.05).coin_combination()).to(eq("4 quarters 0 dimes 1 nickels 0 pennies"))
  end
end
