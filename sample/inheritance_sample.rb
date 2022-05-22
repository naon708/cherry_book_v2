class Product
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{name}, price: #{price}"
  end
end

class DVD < Product
  attr_reader :running_time
  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
    "#{super}, running time: #{running_time}"
  end
end

product = Product.new('Dark Knight', 2500)
p product.to_s 

dvd = DVD.new('Batman', 1000, 120)
p dvd.to_s