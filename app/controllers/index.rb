get '/' do
  # Look in app/views/index.erb
  @notes = Note.all

  erb :index
end

post '/create_note' do
  Note.create(params)
  erb :note
end

# get '/note/id'
# # p params[:id]
# # # @note=Note.find(params[:id])
# # erb :note
#  redirect '/'


# post '/edit_note' do




#    erb :index
#  end

# post '/delete_note' do

#   # Note.find(params[:id]).destroy

#    erb :index
#  end
