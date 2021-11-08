require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("https://www.youtube.com/")
      expect(bookmarks).to include("https://github.com/")
      expect(bookmarks).to include("https://www.codewars.com/dashboard")
    end
  end
end