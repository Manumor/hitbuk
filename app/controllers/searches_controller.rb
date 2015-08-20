class SearchesController < ApplicationController
	def university
		@countries = Country.all
		@universities = University.all
		@courses = Course.all
	end  
	def index
    @universities = University.find(params[:id])
    @courses = Course.find(params[:id])
  	end
	def show_results

			countries = Country.where("country_name = ?", "%#{params[:country]}%")
			universities = []
				countries.each do |u|
					unis = u.universities.where("name = ?", "%#{params[:university_name]}%")
					universities = universities + unis 
					end 
					
			resultUniversities = []
				universities.each do |u|
					uniMap = {name: u.name, courses: []}
					cs = u.courses.where("name = ? AND ibpoints >= ? AND ibpoints <= ?", "%#{params[:course_name]}%", params[:ibminimum], params[:ibmaximum])
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
