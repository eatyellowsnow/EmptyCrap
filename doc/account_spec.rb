require "./account.rb"
require "./user.rb"
require 'rspec'
require "rubygems"
require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.manage.timeouts.implicit_wait = 30
driver.navigate.to "http://172.18.8.251:3000"

driver.find_element(:link, "About your applications environment").click
driver.quit



describe Account do
  before(:all) do
    @user = User.new("Vasya", "Ivanov", 18)
    @account = @user.account
  end

  it 'belongs to the user' do
    @account.user.should be(@user)
  end

  it 'has list of accounts' do
    Account.all.should include(@account)
  end

  it "should has an ID" do
    @account.id.should_not be_false
  end

  it "has a balance in the start" do
    @account.balance.should be 0
  end
end
