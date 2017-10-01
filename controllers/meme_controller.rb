class MemesMethod < Sinatra::Base

	configure :development do
		register Sinatra::Reloader
	end

	set :root, File.join(File.dirname(__FILE__), "..")

	set :views, Proc.new { File.join(root, 'views') }


	get '/memes' do
		@page_header = "R&B Music"
		@vids = MemeTube.all
		erb :"memes/index"
	end


	get '/memes/new' do 
		erb :'memes/new'
	end



	get '/memes/:id' do
		@id = params[:id]
		@vids = MemeTube.find(@id)
		erb :'memes/show'
	end


	post "/memes" do
		new_vids = Memetube.new
		new_vids.title = params[:title]
		new_vids.description = params[:description]
		new_vids.url = params[:url]
		new_vids.genre = params[:genre]
			new_vids.save
		
		redirect '/memes'
	end

	# EDIT
	get '/memes/:id/edit' do

		@vids = MemeTube.find(params[:id])

		erb :'/memes/edit'
	end

	# EDIT UPDATE
	put "/memes/:id" do
		
		vids = Memetube.find(params[:id])
		vids.title = params[:title]
		vids.description = params[:description]
		vids.url = params[:url]
		vids.genre = params[:genre]
		vids.save

		redirect "/memes/#{memes.id}"
	end

	delete '/memes/:id' do
		MemeTube.destroy(params[:id])
		redirect "/memes"
	end






end