require 'bcrypt'

class User
    include Mongoid::Document

    field :name, type: String
    field :email, type: String
    field :password_digest, type: String
    # field :conf_password, type: String

# Confirmation (virtual fields)
    attr :password #ensure replace existing attr_reader
    attr_accessor :password_conf
    # relationship
    # has_many :cars


    # Example of general validation
  validates_presence_of :password, :messages => 'Please -- Enter an email!'
  validates_presence_of :password
  validates_length_of :password, :minimum => 5
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates_confirmation_of :password


# Password Setter
    def password=(new_password)
        self[:password] = new_password
      self.password_digest = BCrypt::Password.create(new_password)
    end
# Password Getter
    def password
        return self[:password]
    end

    def authenticate(conf_password)
        if conf_password && BCrypt::Password.new(self.password_digest) == conf_password
          self
        else
          false
        end
    end   
end


