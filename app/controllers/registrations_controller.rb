class RegistrationsController < Devise::RegistrationsController

	def new 
		redirect_to new_user_session_path, notice: "Contact the admin for registerations"
	end
end
