feature 'can view bookmarks' do
    scenario '/bookmakrs displays bookmarks' do
        visit '/bookmarks'
        expect(page).to have_content "https://www.youtube.com/"
        expect(page).to have_content "https://github.com/"
        expect(page).to have_content "https://www.codewars.com/dashboard"
    end
end