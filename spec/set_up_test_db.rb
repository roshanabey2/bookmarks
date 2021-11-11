require "pg"

p "Setting up the test db"

def set_test
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec( "TRUNCATE bookmarks;" )
end

