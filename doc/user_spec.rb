require "./account.rb"
require 'rspec'
require "./user.rb"
describe User do
  before(:all) do
    @user = User.new("Vasya", "Ivanov", 18)
    @account = @user.account
  end

  it 'has a fullname' do
    @user.fullname.should eq "Vasya" + " " + "Ivanov"
  end

  it 'is older then 18' do
    User.new("Ivan","Ivanov", 10).should raise_error()
  end

  it 'has an account' do
    @account.user.should be @user
    @user.account.should be @account
  end
end
