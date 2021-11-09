# USER Stories

* As a user I want to be able to see a list of bookmarks on the website.
* As a user I want to be able to add new bookmarks to the website
* As a user I want to be able to delete bookmarks
* As a user I want to be able to update bookmarks
* As a user I want to be able to comment on bookmarks
* As a user I want to tag bookmarks into categories
* As a user I want to filter bookmarks by tag.
* As a user I want to be restricted to manage only my own bookmarks.

# bookmarks

### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run the Bookmark Manager app:

```
rackup -p 3000
```

To view bookmarks, navigate to `localhost:3000/bookmarks`
To view bookmarks, navigate to `localhost:3000/bookmarks`.