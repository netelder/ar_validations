require 'json'

get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/events/new' do
  #TODO IMPLEMENT ME
  erb :new_event
end

post '/events/create' do
	content_type 'json'
  event = Event.new(params)
  if event.valid?
    event.save
    "redirect".to_json
  else
    @messages = event.errors.messages
    @content = params
    erb :new_event
  end
end
