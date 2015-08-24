class SearchesController < ApplicationController
	def university
		@countries = Country.all
		@universities = University.all
		@courses = Course.all
	end  
	def create	
    @university = University.find(params[:id])
    @course = Course.find(params[:id])
  	end
	def show_results                                 

		universities = University.where("name LIKE ?","%#{params[:university_name]}%")
		if params[:country] != "All"
			universities = universities.where("country_id = ?", params[:country])
		end
			
			resultUniversities = []
				universities.each do |u|
					uniMap = {name: u.name, image: u.image, id: u.id, courses: []}
					cs = u.courses.where("name LIKE ? AND ibpoints >= ? AND ibpoints <= ?", "%#{params[:course_name]}%", params[:ibminimum], params[:ibmaximum])
					uniMap[:courses] = cs
					resultUniversities << uniMap
			    end 

		if request.xhr?
			respond_to do |format|
				format.json{ render json: resultUniversities}
			end
      	end 
	end 
end
