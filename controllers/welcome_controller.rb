class WelcomeController < App
	get '/' do
	  erb :index #, :layout => :post
	end

#	post '/contact' do
#        	email = params[:email]
#	        Pony.mail       to: email,
#	                        from: 'me@example.com',
#	                        subject: 'Howdy, Partna!'
#	                        #body: erb(:email)      
#	end

#	get '/protected' do
#	  protected!
#	  "Welcome, authenticated client"
#	end
end
