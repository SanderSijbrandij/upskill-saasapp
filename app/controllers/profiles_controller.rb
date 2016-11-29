class ProfilesController < ApplicationController

  # GET /users/:user_id/profile/new
  def new
    @profile = Profile.new
  end

  # POST /users/:user_id/profile
  def create
    @user = User.find(params[:user_id])
    @profile = @user.build_profile(profile_params)

    if @profile.save
      flash[:success] = "Profile created!"
      redirect_to user_path(@user)
    else
      render action: :new
    end
  end

  # GET /users/:user_id/profile/edit
  def edit
    @profile = User.find(params[:user_id]).profile
  end

  # PUT   /users/:user_id/profile
  # PATCH /users/:user_id/profile
  def update
    @profile = User.find(params[:user_id]).profile
    if @profile.update_attributes(profile_params)
      flash[:success] = "Profile updated!"
      redirect_to user_path(@profile.user)
    else
      render action: :edit
    end
  end

  private
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :job_title,
                                      :phone_number, :contact_email,
                                      :description, :avatar)
    end
end
