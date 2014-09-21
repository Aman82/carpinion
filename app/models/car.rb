class Car
  include Mongoid::Document
  include Mongoid::Paperclip


  field :make, type: String
  field :model, type: String
  field :year, type: Integer
  field :trim, type: String
  field :mileage, type: Integer
  field :price, type: Float
  field :transmission, type: String
  field :colour, type: String
  field :title, type: String


  has_mongoid_attached_file :picture,
  :styles =>
  {
  :thumb => "100x100",
   :small => "150x150"
  }
  
    validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/ 

  # Example of general validation
  # validates :email, presence: true, uniqueness: true
  # validates :favorite_number, presence: true

  #  From http://api.rubyonrails.org/classes/ActiveModel/Validations/ClassMethods.html
  # validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  #  Example of custom validation
  # validates_each :favorite_number do |record, attr, value|
  #   record.errors.add attr, 'wrong favorite number.' if value != 5

end