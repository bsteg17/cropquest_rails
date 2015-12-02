# This controller exists to redirect the user to the edit_registration_path(:id).

# There can be no direct call to edit_registration_path(:id) because that call
# requires an :id parameter, for which the value is always the variable current_user. 
# Rails throws an error if current_user is used when the user is not yet signed in.

# The reason that edit_registration_path(:id) must be present in the code when the user is not
#  signed in is that the Edit Profile button (which calls edit_registration_path(:id)) is a part of
# the globally-applied nav-bar.

# The Edit Profile and Log Out buttons themselves are not visible unless the user is signed in.

class EditProfileRedirectsController < ApplicationController
  before_action :set_edit_profile_redirect, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  respond_to :html

  def index
    redirect_to edit_registration_path(current_user)
  end

end
