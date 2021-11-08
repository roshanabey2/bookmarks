feature 'can view bookmarks' do
    scenario '/bookmars displays bookmarks' do
        visit '/'
        expect(page).to have_content ("here's where the book are meant to be")
    end
end