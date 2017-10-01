require "sinatra"
require "sinatra/reloader" if development?
require "pg"
require_relative "./models/Memetube.rb"
require_relative "./controllers/meme_controller.rb"

use Rack::MethodOverride

run MemesMethod