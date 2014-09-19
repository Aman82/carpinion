class UsersController < ApplicationController  
  
  def index
    @users = User.all
  end

  def new
       @user = User.new
  end

  def show
      @user = User.find(params[:id])
      # select everything from user table where id(coloum) = row, params is array use to grab the value from URL query string.
  end

  def create
    # if params[:users][:email] == ""
     @user = User.new(params.require(:user).permit(:name, :email, :password))
     if @user.save
          redirect_to root_path
     else
          render 'new'
     end
  end

  def edit
        @user = User.find(params[:id])
  end

  def update
      @user = User.find(params[:id])
      if @user.update_attributes(params.require(:user).permit(:name, :email, :password))
          redirect_to users_path
      else
          render 'edit'
      end
  end

  def destroy
       @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end
  # end
  # render 'new'
end
