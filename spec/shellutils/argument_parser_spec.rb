require 'shellutils/argument_parser'

describe ArgumentParser do
	
	before (:each) do
		@help_command_mock = mock.as_null_object
		@upload_command_mock = mock.as_null_object
		@generate_command_mock = mock.as_null_object
		@start_command_mock = mock.as_null_object
		@meta_config_file_mock = mock.as_null_object
		@parser = ArgumentParser.new [@help_command_mock, @generate_command_mock, @upload_command_mock, @start_command_mock]
	end
	
	it "should reject unknown command" do
		lambda{@parser.parse "unknown command"}.should raise_error
	end
	
	it "should accept help command" do
		@help_command_mock.should_receive(:accepts_shell_command?).with("help").and_return true
		@help_command_mock.should_receive(:execute_from_shell).with ["help"]
		@parser.parse ["help"]
	end
	
	it "should accept empty command as help command" do
		@help_command_mock.should_receive(:accepts_shell_command?).with("help").and_return true
		@help_command_mock.should_receive(:execute_from_shell).with ["help"]
		@parser.parse []
	end
	
	it "should accept uppercase commands" do
		@help_command_mock.should_receive(:accepts_shell_command?).with("help").and_return true
		@help_command_mock.should_receive(:execute_from_shell).with ["help"]
		@parser.parse ["HELP"]
	end
	
	it "should delegate to help-command" do
		@help_command_mock.should_receive(:accepts_shell_command?).with("help").and_return true
		@help_command_mock.should_receive(:execute_from_shell).with ["help", "a command"]
		@parser.parse ["help", "a command"]
	end

end

