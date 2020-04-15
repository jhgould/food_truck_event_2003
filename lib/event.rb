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

  # went down the wrong path. I know this is not the way to do it.
  #I committed to this idea and by the time if realized it was very wrong
  #I spent so much time on it I couldnt just stop. If I had more time id nuke it
  #but not worth doing that now. At least this shows how far I got.
  #returns a list off all food trucks that sell that item but not quantity
  def total_inventory
    list = Hash.new([])
    @food_trucks.each do |truck|
      truck.inventory.each do |item|
        list[item[0].name] = []
      end
    end
    list.each do |k, v|
      @food_trucks.each do |truck|
        truck.inventory.each do |item|
          if item[0].name == k
            list[k] << truck
          end
        end
      end
    end
    list
  end


  def sorted_item_list
    list = []
    @food_trucks.each do |truck|
      truck.inventory.each do |item|
        list << item[0].name
      end
    end
    list.uniq.sort
  end


end
