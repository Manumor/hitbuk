class CoursesUsersController < ApplicationController
	def index

		correct_courses = CoursesUser.where("user_id = ?", current_user.id)

		puts correct_courses

		@courses_attrs = []
		correct_courses.each do |course|
			course_info = Course.find(course.course_id)
			@courses_attrs << course_info
		end
	end
	def destroy
		coursesuser = CoursesUser.find(params[:id])
		coursesuser.destroy
		render :nothing
	end
end