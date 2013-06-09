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
  #TODO IMPLEMENT ME
  p params
  event = Event.new(params)
  p event.errors
  if event.errors.size == 0
    "redirect".to_json
  else
    event.errors.to_json
  end
end
