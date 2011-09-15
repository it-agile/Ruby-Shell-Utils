require 'shellutils/progress'

describe Progress do

  it 'should print dots and flush in next' do
    STDOUT.should_receive(:print).with(".")
    STDOUT.should_receive(:flush) 
    Progress.next
  end

  it 'should print empty line in end' do
    STDOUT.should_receive(:puts)
    Progress.end
  end

end
