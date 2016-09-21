class UsersController < ApplicationController

	def index 
		@users = User.all
	end

  def create
  	student = Student.find(params[:student_id])
  	if student.email.present?
  		user = User.create(email: student.email, password: student.mobile, approved: false, user_type: "student")
  		if student.profile.nil?
  			student.create_profile(user_id: user.id)
  		else
  			student.profile.update_attributes(user_id: user.id)
  		end
  		redirect_to :back, notice: "Successfully Created Account"
  	end
  end

  def update 
	  	user = User.find(params[:id])
	  	if params[:approvedd]
	  		user.update_attributes(approved: true)
	  	else 
	  		user.update_attributes(approved: true)
	  	end
	  	redirect_to :back, notice: "Access Approved"
  end

  def destroy
  	student = Student.find(params[:id])
  	user_id = student.profile.user_id
  	User.find(user_id).destroy 
  	student.profile.update_attributes(user_id: nil)
  	redirect_to :back, notice: "Successfully removed Login Access"
  end
end
