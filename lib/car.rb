class Car
  attr_reader :description,
              :year,
              :make,
              :color,
              :model,
              :age
              
  def initialize(description:, year:)
    @description = description
    @year = year
    @make = nil
    @color = nil
    @model = nil
    @age = nil
  end
  def add_make(make)
    @make = make
  end
  def add_model(model)
    @model = model
  end
  def add_color(color)
    @color = color
  end
  def add_age(age)
    @age = age
  end
end