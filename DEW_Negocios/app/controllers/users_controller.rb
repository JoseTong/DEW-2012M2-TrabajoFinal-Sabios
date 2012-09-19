class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      cookies[:auth_token] = @user.auth_token
<<<<<<< HEAD
      redirect_to root_url
=======
      redirect_to "http://localhost:3000/sabios/new" target="_blank"
>>>>>>> 9bf6af0d024842e207bd5c20979601333848a119
    else
      render "new"
    end
  end

end
