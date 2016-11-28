class ProfilesController < ApplicationController

  # GET /users/:user_id/profile/new
  def new
    @profile = Profile.new(user_id: params[:user_id])
  end
end
