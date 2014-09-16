class Car
  include Mongoid::Document

  field :make, type: String
  field :model, type: String
  field :year, type: Integer
  field :trim, type: String
  field :mileage, type: Integer
  field :price, type: Float
  field :transmission, type: String
  field :colour, type: String
  field :description, type: String
  
end