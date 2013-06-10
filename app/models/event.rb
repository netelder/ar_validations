require 'date_validator'

class Event < ActiveRecord::Base

	validates :date, :title, :organizer_name, :organizer_email, :presence => true
	validates :title, :uniqueness => true
	validates_format_of :organizer_email, :with => /@/,  :message => "address not valid." # validate on input form, and send double-opt-in email to this address
	validates_date_of :date, :after => Proc.new { Time.now }, :message =>  "must be later than today."

end



# attributes	
# t.string :organizer_name
# t.string :organizer_email
# t.string :title
# t.date :date