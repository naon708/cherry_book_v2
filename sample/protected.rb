class User
  attr_reader :name

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight ? :Yes : :No
    # self.weight
  end

  # protected attr_reader :weight   # Ruby3.0以降ならこう書ける
  # private
  protected

  def weight
    @weight
  end
end

alice = User.new('Alice', 40)
bob = User.new('Bob', 60)

puts alice.name
puts alice.heavier_than?(bob)
# puts alice.weight