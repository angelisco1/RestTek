class AssignmentsController < ApplicationController

	def index
		@assignments = Assignment.all
	end

	def show
		@assignment = Assignment.find_by(id: params[:id])
	end

	def new
		@assignment = Assignment.new
	end

	def create
		@assignment = Assignment.new assignment_params
		if @assignment.save
			redirect_to assignments_path
		else
			@errors = @assignment.errors.full_messages
			render 'new'
		end
	end


	private
	def assignment_params
		return params.require(:assignment).permit(:role_id, :status_id)
	end
	
end
