require "sinatra"
require "sinatra/reloader"
require 'pry'

require_relative "./lib/media.rb"

enable :sessions
media = Media.new

get '/av' do
	@index = media.urls.length 
	@html = []
	media.urls.each do |url|
		@html.push(url)
	end
 	erb(:av)
end

post "/submit_url" do
	media.add_url( params[:link] )
	redirect "/av"
end


