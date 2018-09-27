require 'pg'
class Bookmarks

  def self.all
      # Output a table of current connections to the DB
    if ENV['CONDITION'] == 'test'
      conn = PG.connect( dbname: 'bookmark_manager_test' )
    else
      conn = PG.connect( dbname: 'bookmark_manager' )
    end  
    result  = conn.exec( "SELECT url FROM bookmarks" ) 
    result.map do |row|
      row['url']
    end
  end

  def self.add(link)
    if ENV['CONDITION'] == 'test'
      conn = PG.connect( dbname: 'bookmark_manager_test' )
    else
      conn = PG.connect( dbname: 'bookmark_manager' )
    end  
    conn.exec( "INSERT INTO bookmarks (url) VALUES ('#{link}')" )
  end

end
