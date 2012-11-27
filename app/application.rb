require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader' if development?
require 'haml'
require 'yaml'

require_relative './routes/init'
require_relative './models/init'
require_relative './helpers/init'

class Application < Sinatra::Application
  enable :sessions
  set :public_folder, File.dirname(__FILE__) + "/public"
  set :views, File.dirname(__FILE__) + "/views"

  configure :development do
    register Sinatra::Reloader
  end

  configure :test do
  end

  configure :production do
  end
end
