require 'bookmarks'
describe Bookmarks do
  
  describe ".all" do
    
    it 'Should return all bookmarks' do
     
      bookmarks = Bookmarks.all
      expect(bookmarks).to eq([
        "http://www.makersacademy.com",
        "http://www.destroyallsoftware.com",
        "http://www.google.com",
         ])
    end
  end

  describe ".add" do
    
    it 'Should return add bookmarks' do
      Bookmarks.add('https://www.reddit.com')
      bookmarks = Bookmarks.all
      expect(bookmarks).to eq([
        "http://www.makersacademy.com",
        "http://www.destroyallsoftware.com",
        "http://www.google.com",
        "https://www.reddit.com"
         ])
    end
  end
end
