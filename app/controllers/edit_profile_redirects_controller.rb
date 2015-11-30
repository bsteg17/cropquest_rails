class EditProfileRedirectsController < ApplicationController
  before_action :set_edit_profile_redirect, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  respond_to :html

  def index
    redirect_to edit_registration_path(current_user)
  end

end
