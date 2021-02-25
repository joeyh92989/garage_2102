require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/garage'
require './lib/owner'
require './lib/car'


class GarageTest < MiniTest::Test

  def test_it_exists_and_has_attributes
    garage = Garage.new('Totally Safe Parking')
    assert_instance_of Garage, garage
    assert_equal 'Totally Safe Parking', garage.name
  end

  def test_it_can_hold_customers_and_cars
    garage = Garage.new('Totally Safe Parking')
    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Blue Ford Escape')
    owner_2 = Owner.new('Glen Coco', 'Unknown')
    owner_2.buy('1963 Green Chevrolet Corvette')
    owner_2.buy('2020 Silver Volvo XC90')
    garage.add_customer(owner_1)
    garage.add_customer(owner_2)

  assert_equal [owner_1, owner_2], garage.customers
  assert_equal 4, garage.all_cars.length
  end

  def test_it_can_get_cars_by_make
    garage = Garage.new('Totally Safe Parking')
    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Blue Ford Escape')
    owner_2 = Owner.new('Glen Coco', 'Unknown')
    owner_2.buy('1963 Green Chevrolet Corvette')
    owner_2.buy('2020 Silver Volvo XC90')
    garage.add_customer(owner_1)
    garage.add_customer(owner_2)

    expected = {
                'Ford'=> [owner_1.cars[0],owner_1.cars[1]],
                'Chevrolet' => [owner_2.cars[0]],
                'Volvo' =>[owner_2.cars[1]]
                }
  assert_equal expected, garage.cars_by_make
  end
  def test_it_return_oldest_cars
    garage = Garage.new('Totally Safe Parking')
    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Blue Ford Escape')
    owner_2 = Owner.new('Glen Coco', 'Unknown')
    owner_2.buy('1963 Green Chevrolet Corvette')
    owner_2.buy('2020 Silver Volvo XC90')
    garage.add_customer(owner_1)
    garage.add_customer(owner_2)

    
    assert_equal [owner_2.cars[0],owner_1.cars[0],owner_1.cars[1]], garage.oldest_cars
  end
end