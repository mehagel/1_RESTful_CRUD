get '/' do

  erb :index
end


post '/create_note' do
  @notes = Note.all
  Note.create(params)
  erb :note
end

get '/note/id'
@notes = Note.all
p params[:id]
# @note=Note.find(params[:id])
erb :note
 redirect '/'
end


# post '/edit_note' do




#    erb :index
#  end

# post '/delete_note' do

#   # Note.find(params[:id]).destroy

#    erb :index
#  end
