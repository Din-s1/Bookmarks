require 'bookmarks'
describe Bookmarks do
  
  describe ".all" do
    it 'Should return all bookmarks' do
      bookmarks = Bookmarks.all
      expect(bookmarks).to eq([
        "http://www.makersacademy.com",
        "http://www.google.com",
        "http://www.destroyallsoftware.com",
        "duckduckgo.com"
         ])
    end
  end
end
