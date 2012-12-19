require 'rspec'
describe User1 do
  before(:all) do
    @user1 = User1.new("Stepa")
  end
  
  it 'has a name' do
    @user1.name.should eq "Stepa"
  end
  
end  


