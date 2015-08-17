class CoursesController < ApplicationController
   
  def index 
    @search = Course.search(params[:q])
    @courses = @search.result.includes(:university)
    @uni = University.all
  end
  def show
    @course = Course.find(params[:id])
  end
end