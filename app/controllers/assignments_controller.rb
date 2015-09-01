class AssignmentsController < ApplicationController

	def index
		# @assignments = Assignment.all
		@assignments = policy_scope(Assignment)
		authorize @assignments
	end

	def show
		@assignment = Assignment.find_by(id: params[:id])
		# @assignments = policy_scope(Assignment)
		authorize @assignment
	end

	def new
		@assignment = Assignment.new
		authorize @assignment
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

	def update
		@assingment = Assignment.find params[:id]
		if @assingment.update assingment_params
			redirect_to assignments_path
		else
			render 'edit'
		end
	end

	def edit
		@assingment = Assignment.find params[:id]
		authorize @assingment
	end

	def destroy
		@assingment = Assignment.find params[:id]
		authorize @assingment
		@assingment.destroy!
		redirect_to assignments_path
	end


	private
	def assignment_params
		return params.require(:assignment).permit(:role_id, :status_id)
	end
	
end
