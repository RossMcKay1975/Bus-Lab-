require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class TestPerson < MiniTest::Test


  def test_person_name
    person = Person.new("George", 69)
    assert_equal("George", person.name)
  end

  def test_person_age
    person = Person.new("George", 69)
    assert_equal(69, person.age)
  end


end
