class Polls
  include Mongoid::Document
  field :index, type: String
  field :new, type: String
  field :show, type: String
  field :edit, type: String
  field :index_no_polls, type: String
  field :show_results, type: String
end
