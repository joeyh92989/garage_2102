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
    # require 'pry'; binding.pry
    car_year = car_details[0]
    # require 'pry'; binding.pry
    car_description = car_details[1] + ' ' + car_details[2] + ' ' + car_details[3]
    # require 'pry'; binding.pry
    @cars << Car.new({description: car_description, year: car_year})
  end
end