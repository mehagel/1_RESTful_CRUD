get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/create_note' do
  p params
  # note = Note.create(tile: pararms[:title], content: parmams[:content])


  erb :index
end


post '/edit_note' do




   erb :index
 end

post '/delete_note' do

  # Note.find(params[:id]).destroy

   erb :index
 end
