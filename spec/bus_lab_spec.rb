require('minitest/autorun')
require('minitest/rg')
require_relative("../bus_lab")
require_relative("../person")

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal", ["John", "Ringo", "Paul", "George"])
  end

  def test_route_num
    assert_equal(22, @bus.route_num)
  end

  def test_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_bus_driving
    assert_equal("broom broom", @bus.driving)
  end

  def test_num_of_passengers_on_bus
    assert_equal(4, @bus.number_of_passengers_on_bus)
  end

  def test_person_picked_up
    person = Person.new("Pete", 67)
    @bus.person_picked_up(person)
    assert_equal(5, @bus.number_of_passengers_on_bus)
  end

end
