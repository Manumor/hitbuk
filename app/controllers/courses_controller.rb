class CoursesController < ApplicationController

  def index
    @courses = Course.all
    @uni = University.all
  end
  def show
  	@universities = University.all
    @course = Course.find(params[:id])
  end
end
