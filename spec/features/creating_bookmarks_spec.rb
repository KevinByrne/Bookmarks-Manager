feature 'Adding a new bookmark' do
  scenario 'User can add bookmarks' do
    visit('/bookmarks/add')
    fill_in('url', with: 'http://www.reddit.com')
    click_button('Submit')

    expect(page).to have_content 'http://www.reddit.com'
  end
end