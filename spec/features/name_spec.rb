require "capybara/rspec"
require "./app.rb"
Capybara.app = Battle

feature "display content" do
  scenario 'display something' do
    visit('/')
    expect(page).to have_content "Hello Battle!"
  end

end
