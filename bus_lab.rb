class Bus

  attr_reader(:route_num, :destination, :passengers)

  def initialize(route_num, destination, passengers)
    @route_num = route_num
    @destination = destination
    @passengers = passengers
  end

  def driving
    return "broom broom"
  end

  def number_of_passengers_on_bus
    return @passengers.count
  end

  def person_picked_up(person)
    @passengers.push(person)
  end


end
