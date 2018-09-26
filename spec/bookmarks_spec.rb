require 'bookmarks'
describe Bookmarks do
  
  describe ".all" do
    
    it 'Should return all bookmarks' do
      conn = PG.connect( dbname: 'bookmark_manager_test' )
      conn.exec( "INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com'),('http://www.destroyallsoftware.com'), ('http://www.google.com')" )
      bookmarks = Bookmarks.all
      expect(bookmarks).to eq([
        "http://www.makersacademy.com",
        "http://www.destroyallsoftware.com",
        "http://www.google.com",
         ])
    end
  end

end
