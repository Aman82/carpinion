class Answer
  include Mongoid::Document

  belongs_to :poll, dependent: :destroy  #, inverse_of: :answers
  has_many :votes
  
  # validates_presence_of :poll
end
