require 'bookmark'
require 'database_helpers'



describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      
      # Add the test data
      bookmark = Bookmark.create(title: 'Makers', url: 'http://www.makersacademy.com')
      Bookmark.create(title: 'DestroyAllSoftware', url: 'http://www.destroyallsoftware.com')
      Bookmark.create(title:'Google', url: 'http://www.google.com')
      
      
      bookmarks = Bookmark.all
      
      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      #expect(bookmarks.first.id).to eq bookmark.id
      #expect(bookmarks.first.title).to eq 'Makers'
      #expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'

    end
end

describe '.create' do
  it 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    
    bookmark = Bookmark.create(title: 'Zenva Academy', url: 'https://academy.zenva.com/')
    persisted_data = persisted_data(id: bookmark.id)

    expect(bookmark).to be_a Bookmark
    expect(bookmark.id).to eq persisted_data.first['id']
    expect(bookmark.title).to eq 'Zenva Academy'
    expect(bookmark.url).to eq 'https://academy.zenva.com/'
  end
end