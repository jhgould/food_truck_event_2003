class Item
  attr_reader :name

  def initialize(data)
    @name = data[:name]
    @price = data[:price].delete"$"
  end

  def price
    @price.to_f
  end

end
