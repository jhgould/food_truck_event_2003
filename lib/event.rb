class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    names = []
    @food_trucks.each do |truck|
      names << truck.name
    end
    names
  end

  def food_trucks_that_sell(item)
    trucks = []
    @food_trucks.each do |truck|
      if truck.inventory.include?(item)
        trucks << truck
      end
    end
    trucks
  end


end
