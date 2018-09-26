require 'pg'
require_relative '../../lib/app.rb'

feature 'should show a list of bookmarks' do
  scenario 'expect to display bookmarks' do
    populate_base
    visit '/bookmarks'
    
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("http://www.google.com")
  end  
end



feature 'Should be able to navigate to bookmarks manager' do
  scenario 'expect to display bookmarks' do
    populate_base
    visit '/'
    click_button('Show Bookmarks')
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("http://www.google.com")
  end
end

feature 'Should be able to add bookmark to bookmarks manager' do
  scenario "expect to display added bookmark" do
    visit '/'
    click_button('Show Bookmarks')
    click_button('Add Bookmark')
    fill_in 'Bookmark', with: 'https://www.duckduckgo.com'
    click_button('submit')
    expect(page).to have_content('https://www.duckduckgo.com')
  end
end  
