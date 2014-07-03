require 'student_directory'

describe 'saving the file' do

  before(:each){File.delete('test.txt') if File.exists?('test.txt')}

  it 'saves some text to a csv file' do
    f = double File
    expect(f).to receive(:write).with 'Roi, June, 23'
    expect(File).to receive(:open).with('test.txt','w').and_yield f
    expect(self).to receive(:hello)
    save('Roi, June, 23')
  end

  it 'saves some text to a csv file' do
    # 0. get the it block setup
    # 1. what's the method call?
    # 2. what's the argument(s) if any?
    # 3. what's the return value, if any?
    # 4. what state change is there
    #  then what kind of test
    #input = "Roi", "June","23"
    #file = "Roi", "June","23"
    save('Roi, June, 23')
    # 1. really save the file, and then read it back in and check the contents
    f = File.open('test.txt','r')
      expect(f.read).to eq 'Roi, June, 23'
    f.close
    # 2. or we could stub the file system expect(x).to receive(:method).with(arg).and_return(response)
    
  end
end

