require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('result path', {:type => :feature}) do
  it('returns the amount of money entered in change') do
    visit('/')
    fill_in('amount', :with => 1.05)
    click_button('Send')
    expect(page).to have_content('Ran out of quarters, your change is 3 quarters 3 dimes')
  end
end
