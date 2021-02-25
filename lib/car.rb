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
    @make = add_make
    @color = add_color
    @model = add_model
    @age = add_age
  end
  def add_make
    @make = (@description.split)[1]
  end
  def add_model
    @model = (@description.split)[2]
  end
  def add_color
    @color = (@description.split)[0]
  end
  def add_age
    @age = 2021 - @year.to_i
  end
end