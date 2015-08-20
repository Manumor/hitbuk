class SubjectsController < ApplicationController


	def create

		if request.xhr?
			current_user.subjects.each(&:destroy)
			params[:subjects].each do |subject|
			@subject = Subject.new
			@subject.name = subject
			@subject.user = current_user
			@subject.save
			end
      	render :nothing, status: 200
      	end 
	end

end
