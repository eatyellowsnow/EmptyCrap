class Account
  attr_reader :user, :id
  attr_accessor :balance

  def initialize(user)
    @user = user
    @balance = 0
    self.class.add_account(self)
    @id = self.set_id
  end

  @@accounts = []

  def set_id
    prev_account_id = self.class.all.last.id
    @id = prev_account_id ? prev_account + 1 : 1
  end

  def self.all
    @@accounts
  end

  def self.add_account(account)
    @@accounts << account
  end
end

