get '/' do
  @notes = Note.all
  erb :index
end


post '/create_note' do
  Note.create(params)
  redirect '/'
end

get '/note/:id' do
  @note=Note.find(params[:id])
  erb :note
end

post '/display_note' do
  @note=Note.find(params[:id])
   erb :edit
 end

 post '/edit_note' do
  @change_note=Note.find(params[:id])
  @change_note.title = params[:title]
  @change_note.content = params[:content]
  @change_note.save
  @notes = Note.all
   erb :index
 end

post '/delete_note' do
  p params
  Note.find(params[:id]).destroy
   redirect '/'
 end
