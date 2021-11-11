feature 'viewing homepage' do
  scenario 'homepage is visible' do 
    visit('/')

    expect(page).to have_content "Welcome to Bookmark Manager"
  end
end