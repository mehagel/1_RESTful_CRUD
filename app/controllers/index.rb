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

post '/edit_note' do
  p params
 @note=Note.find(params[:id])
   erb :edit
 end

post '/delete_note' do
  p params
  Note.find(params[:id]).destroy
   redirect '/'
 end
