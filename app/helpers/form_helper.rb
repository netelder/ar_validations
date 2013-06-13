helpers do
	def _pre_fill(field)
		if !@content.empty?
  		ret_str = ""
  		ret_str += "value= \"#{@content[field]}\""
		end 
	end

	def _errors(field)
		ret_str = ""
		ret_str += "<span class = 'error'>#{@messages[field].join(", ")}</span>" if ! @messages.empty?
	end

end
