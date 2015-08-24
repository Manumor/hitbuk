class UniversitiesController < ApplicationController
  def show
    @university = University.find(params[:id])
    @courses = @university.courses	
  end
end
