require 'pg'

feature 'should show a list of bookmarks' do
  scenario 'expect to display bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("http://www.google.com")
  end  
end



feature 'Should be able to navigate to bookmarks manager' do
  scenario 'expect to display bookmarks' do
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
    fill_in 'bookmark', with: 'test'
    click_button('add')
    expect(page).to have_content('test')
  end
end  
