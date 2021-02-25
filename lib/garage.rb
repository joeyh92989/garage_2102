class Garage
  attr_reader :name,
              :customers,
              :all_cars

  def initialize(name)
    @name= name
    @customers= []
    @all_cars = []
  end
  def add_customer(customer)
    @customers.push(customer)
    customer.cars.each do |car|
      @all_cars.push(car)
    end
  end
  def cars_by_make
   @all_cars.reduce({}) do |make, car|
    make[car.make] ||= []
    make[car.make] << car
    make
   end
  end
  def oldest_cars
   cars_sort = @all_cars.sort_by(&:age).reverse!
    
   oldest_cars = cars_sort[0..2]
  end
end