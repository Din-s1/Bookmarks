require 'pg'

def empty_table_helper
  conn = PG.connect( dbname: 'bookmark_manager_test' )
  conn.exec("TRUNCATE TABLE bookmarks")
end

def populate_base
  conn = PG.connect( dbname: 'bookmark_manager_test' )
  conn.exec( "INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com'),('http://www.destroyallsoftware.com'), ('http://www.google.com')" )    
end
