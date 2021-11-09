feature 'viewing bookmarks' do
  feature 'viewing homepage' do
    scenario 'homepage is visible'
      visit('/')

      expect(page).to have_content "Welcome to Bookmark Manager"
    end
  end

  feature 'viewing bookmarks list' do
    scenario 'a list of the bookmarks'
      visit('/bookmarks')

      expect(page).to have_content "http://www.makersacademy.com"
      expect(page).to have_content "http://www.destroyallsoftware.com"
      expect(page).to have_content "http://www.google.com"
    end
  end
end  

