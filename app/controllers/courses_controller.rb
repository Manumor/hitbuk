class CoursesController < ApplicationController

  def index
    @courses = Course.all
    @uni = University.all
  end
  def show
  	@universities = University.all
    @course = Course.find(params[:id])
    
    if request.xhr?
    	if @course.users.include?(current_user)
    		render json: {error: "User already has this course"}
    	else 
    		@course.users << current_user
    	end 
 	end 
  end 
end 
