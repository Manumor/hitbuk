class CourseUserController < ApplicationController
	def destroy
		@user = Courses_Users.where("user_id = ? && course_id = ?", current_user.id)
		@user.delete!
	end
end
