require 'data_mapper'
require 'dm-core'
require 'dm-migrations'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/db/blog.db")

class Post
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :body, Text
  property :created_at, DateTime
end

# Perform basic sanity checks and initialize all relationships
# Call this when you've defined all your models
DataMapper.finalize

# automatically create the post table
Post.auto_upgrade!
