require 'pg'
#view/bookmarks & lib/bookmarks
feature 'viewing bookmarks list' do 
  scenario 'a list of the bookmarks' do
        connection = PG.connect(dbname: 'bookmark_manager_test')
        # Add the test data
        connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com', 'Makers');")
        connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com', 'DestroyAllSoftware');")
        connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com', 'Google');")
    
      visit('/bookmarks')

      expect(page).to have_link("Makers", href: 'http://www.makersacademy.com')
      expect(page).to have_link("DestroyAllSoftware",  href: 'http://www.destroyallsoftware.com')
      expect(page).to have_link("Google", href: 'http://www.google.com')
  end
end

