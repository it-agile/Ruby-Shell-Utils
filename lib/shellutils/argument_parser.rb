class ArgumentParser
	
	def initialize commands
		@commands = commands
	end
	
	def parse params
		params[0] = params[0] ? params[0].downcase : 'help'
		command_name = params[0]
		command_executed = false
		@commands.each do |command|
			if command.accepts_shell_command?(command_name) 
				command.execute_from_shell params
				command_executed = true
			end
		end
		if not command_executed and command_name == "spec"
			# 'spec" is for testing purpose only: do nothing special
		elsif not command_executed
			raise ShellArgumentException.new command_name
		end
	end

end
