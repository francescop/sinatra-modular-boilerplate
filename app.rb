require 'sinatra/base'
require 'pony'
require 'i18n'
require 'i18n/backend/fallbacks'

require './helpers/application_helpers.rb'

class App < Sinatra::Application
	## i18n support
	#configure do
	#  I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)
	#  I18n.load_path = Dir[File.join(settings.root, 'locales', '*.yml')]
	#  I18n.backend.load_translations
	#end
	##

	helpers ApplicationHelpers

	enable :sessions, :method_override
	set :session_secret, 'super secret'
	set :public_folder, File.expand_path('../../public', __FILE__)

#	helpers do
#	  def protected!
#	    return if authorized?
#	    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
#	    halt 401, "Not authorized\n"
#	  end
#
#	  def authorized?
#	    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
#	    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
#	  end
#	end

#	before '/admin/*' do
#	        protected!
#	end

#	not_found{ erb :not_found }
end

