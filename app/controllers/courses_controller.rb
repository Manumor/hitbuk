class CoursesController < ApplicationController
   
  def index 
    @courses = Course.all
    @uni = University.all
  end
  def show
    @courses = Course.find(params[:id])
    @universities = University.find(params[:id])
    @countries = Country.find(params[:id])
  end
end