class RegistrationController < Devise::RegistrationsController
  include StatesHelper


  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :address, :city, :state, :zip, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :address, :city, :state, :zip, :password, :password_confirmation, :current_password)
  end

end
