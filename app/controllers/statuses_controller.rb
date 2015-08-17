class StatusesController < ApplicationController

	def index
		@statuses = Status.all
	end

	def show
		@status = Status.find_by(id: params[:id])
	end

	def new
		@status = Status.new
	end

	def create
		@status = Status.new status_params
		if @status.save
			redirect_to statuses_path
		else
			@errors = @status.errors.full_messages
			render 'new'
		end
	end

	private
	def status_params
		return params.require(:status).permit(:name, :requires_assignee)
	end

end
