class CoursesUsersController < ApplicationController
	def destroy
		coursesuser = CoursesUser.find(params[:id])
		coursesuser.destroy
		render :nothing
	end
end