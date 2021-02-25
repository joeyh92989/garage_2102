require './lib/car'
class Owner
  attr_reader :name,
              :occupation,
              :cars

  def initialize(name, occupation)
    @name= name
    @occupation = occupation
    @cars = []
  end
  def buy(car_params)
    car_details = car_params.split
    car_year = car_details[0]
    car_description = car_details[1] + ' ' + car_details[2] + ' ' + car_details[3]
    @cars << Car.new({description: car_description, year: car_year})
  end
  def vintage_cars
    vintage_cars =[]
    @cars.find_all do |car|
      if car.age > 25
        vintage_cars.push(car)
      end
    end
    vintage_cars
  end
end