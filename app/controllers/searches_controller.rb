class SearchesController < ApplicationController
	def university
		@courses = Course.all
		@unis = University.all
	end  
	def show_results

		if params[:country] == ""
			universities = University.where("name LIKE ?", "%#{params[:university_name]}%")
			courses = []
				universities.each do |u|
					cs = u.courses.where("name LIKE ? AND ibpoints >= ? AND ibpoints <= ?", "%#{params[:course_name]}%", params[:ibminimum], params[:ibmaximum])
					courses = courses + cs
			    end 
		else 
			universities = University.where("country LIKE ? AND name LIKE ?", "#{params[:country]}", "%#{params[:university_name]}%") 
			courses = []
				universities.each do |u|
					cs = u.courses.where("name LIKE ? AND ibpoints >= ? AND ibpoints <= ?", "%#{params[:course_name]}%", params[:ibminimum], params[:ibmaximum])
					courses = courses + cs
			    end
		end

		if request.xhr?
			respond_to do |format|
				format.json{ render json: courses}
			end
      	end 

	end 
end
