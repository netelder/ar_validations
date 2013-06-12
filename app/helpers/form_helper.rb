helpers do
	def _pre_fill(field)
		p @content[field]
		ret_str = ""
		ret_str += "value= #{@content[field]}" if !@content.empty?
	end

	def _errors(field)
		ret_str = ""
		ret_str += "<span class = 'error'>#{@messages[field].join(", ")}</span>" if ! @messages.empty?
	end

end
