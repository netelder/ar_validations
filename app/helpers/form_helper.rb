helpers do
	def _pre_fill(field)
		ret_str = ""
		ret_str += "value= #{@content[field]}" if !@content.empty?
	end

	def _errors(field)
		ret_str = ""
		ret_str += "#{@messages[field].to_s}" if ! @messages.empty?
	end

end
