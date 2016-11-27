class Users::RegistrationsController < Devise::RegistrationsController
  # extend default devise behavior so that users signing up
  # with pro account save with stripe subscription function
  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        if resource.plan_id == 2
          resource.save_with_subscription
        else
          resource.save
        end
      end
    end
  end
end
