require './account'

class User
  attr_reader :name, :lname, :fullname, :age, :account

  def initialize(name, lname, user_age)
    @name  = name
    @lname = lname
    @fullname = name + " " + lname
    self.age = user_age
    @account = Account.new(self)
  end

  def age=(user_age)
    if user_age >= 18
      @age = user_age
    else
      raise "So young!"
    end
  rescue RuntimeError => error
    return error.message
  end
end
