require 'pg'
feature 'add bookmark' do
  scenario ' a genuine webpage is added' do
  connection = PG.connect(dbname: 'bookmark_manager_test')
  visit('/')
  fill_in 'url', with: 'https://academy.zenva.com/'
  fill_in 'title', with: 'Zenva Academy'
  click_button('Submit')
  expect(page).to have_link('Zenva Academy', href: 'https://academy.zenva.com/')
  end
end