require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('result path', {:type => :feature}) do
  it('returns the amount of money entered in change') do
    visit('/')
    fill_in('amount', :with => 1.05)
    click_button('Send')
    expect(page).to have_content('4 quarters 1 nickels')
  end
end
