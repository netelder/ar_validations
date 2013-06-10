require 'json'
require 'chronic'

get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/events/new' do
  @messages = []
  @content = []
  erb :new_event
end

post '/events/create' do
  params[:date] = Chronic.parse(params[:date])
  event = Event.new(params)
  if event.valid?
    event.save
    "redirect".to_json
  else
    @messages = event.errors.to_a
    @content = params
    p @content
    p @messages
    erb :new_event
  end
end
