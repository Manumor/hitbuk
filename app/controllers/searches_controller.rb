class SearchesController < ApplicationController
	def university
		@courses = Course.all
		@unis = University.all
	end  
	def show_results

		universities = University.where("country = ?", "#{params[:country]}") 
		courses = []
		universities.each do |u|
			cs = u.courses.where("name LIKE ? AND ibpoints >= ? AND ibpoints <= ?", "%#{params[:course_name]}%", params[:ibminimum], params[:ibmaximum])
			courses = courses + cs
		end

		if request.xhr?
			respond_to do |format|
				format.json{ render json: courses}
			end
      	end 

	end 
end
