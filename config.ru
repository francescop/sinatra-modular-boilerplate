require './app.rb'
Dir.glob("#{Dir.pwd}/{models,controllers}/*.rb").each { |file| require file }

map('/') { run WelcomeController }
map('/blog') { run PostsController }
