class PollsController < ApplicationController
  def index
  	@cars= Car.all
  end

  def create
  end
end
