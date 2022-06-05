class Product
  DEFAULT_PRICE = 1000

  SOME_NAMES = %w(foo bar baz).map(&:freeze).freeze
  def self.names_without_bar(names = SOME_NAMES)
    names.delete('bar')
    names
  end
end

puts Product::DEFAULT_PRICE
# p Product.names_without_bar
# p Product::SOME_NAMES[1].upcase!