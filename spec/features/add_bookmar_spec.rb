require 'pg'
feature 'add bookmark' do
  scenario ' a genuine webpage is added' do
  connection = PG.connect(dbname: 'bookmark_manager_test')
  visit('/')
  fill_in :new_bookmark, with: 'https://academy.zenva.com/'
  click_button('ADD_BKMK')
  expect(page).to have_content 'https://academy.zenva.com/' 
  end
end