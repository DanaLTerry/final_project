class RegistrationsController < Devise::RegistrationsController
#  skip_before_filter :verify_authenticity_token, :only => :create
    
  private 

  def sign_up_params
    params.require(:user).permit(:gh_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:gh_name, :email, :password, :password_confirmation, :current_password)
  end
end