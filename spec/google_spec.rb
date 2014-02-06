require 'capybara/rspec'

Capybara.current_driver = :selenium
Capybara.app_host = 'http://www.google.com'

feature "Performing a google search", js: true do
  scenario "Searching for Mike Gehard" do
    visit "/"
    fill_in "q", with: "Mike Gehard"

    expect(page).to have_content("Mike Gehard (mikegehard) on Twitter")
    expect(page).to have_content("Jeff Dean (mikegehard) on Twitter")
  end
end