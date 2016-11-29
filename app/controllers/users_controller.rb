class UsersController < ApplicationController

  # GET /users/:id
  def show
    @user = User.find(params[:id])
    @profile = @user.profile
  end
end
