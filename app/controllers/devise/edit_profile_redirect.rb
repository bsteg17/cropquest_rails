class EditProfileRedirectController < ApplicationController
   before_filter :authenticate_user!

   def go
      redirect_to edit_registration_path(current_user)
   end

end
