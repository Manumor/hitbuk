class SearchesController < ApplicationController
	def university
		@course = Course.all
	end  
	def show_results

		courses = Course.where("name LIKE ? AND ibpoints >= ? AND ibpoints <= ?", "%#{params[:course_name]}%", params[:ibminimum], params[:ibmaximum])

		if request.xhr?
			respond_to do |format|
				format.json{ render json: courses}
			end
      	end 

	end 
end
