class PostsController < App
	get '/' do
	  # get the latest 20 posts
#	  @posts = Post.all(:order => [ :id.desc ], :limit => 20)
#	  erb :index
		'posts'
	end
end

