require "capybara/rspec"
require "./app.rb"
Capybara.app = Battle

feature "enter play names" do
  scenario 'display names entered' do
    visit('/')
    fill_in :player_1, with: "Socks"
    fill_in :player_2, with: "Boots"
    click_button 'Enter'
    expect(page).to have_content "Socks vs Boots"
  end
end
