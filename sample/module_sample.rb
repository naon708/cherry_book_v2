module Greet
  def hello
    'hello'
  end
end

module Greeting
  include Greet

  def ohayo
    'ohayo'
  end
end

class User
  include Greeting
end

user = User.new
p user.ohayo
p user.hello
p User.ancestors
