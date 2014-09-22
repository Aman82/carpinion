class UsersController < ApplicationController  
  
  def index
    @users = User.all
  end

  def new
       @user = User.new
  end

  def show
      @user = User.find(params[:id])
  end

  def create
    # if params[:users][:email] == ""
     @user = User.new(params.require(:user).permit(:name, :email, :password, :password_conf))
     if @user.save
          redirect_to login_path
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
