require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/car'

class CarTest < MiniTest::Test

  def test_it_exists
    car_1= Car.new({description: 'Green Ford Mustang', year: '1967'})
    assert_instance_of Car, car_1
  end
  def test_it_has_attributes
    car_1= Car.new({description: 'Green Ford Mustang', year: '1967'})

    assert_equal 'Green Ford Mustang', car_1.description
    assert_equal '1967', car_1.year
  end
  def test_it_can_add_additional_attributes
    car_1= Car.new({description: 'Green Ford Mustang', year: '1967'})
    car_1.add_make("Ford")
    car_1.add_model("Mustang")
    car_1.add_color("Green")
    car_1.add_age(54)

   assert_equal 'Ford', car_1.make
   assert_equal 'Mustang', car_1.model
   assert_equal 'Green', car_1.color
   assert_equal 54, car_1.age
  end
end