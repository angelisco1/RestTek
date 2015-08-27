class StatusesController < ApplicationController
		skip_before_action :verify_authenticity_token
		respond_to :json

	def index
		@statuses = Status.all
		authorize @statuses
	end

	def show
		@status = Status.find_by(id: params[:id])
		authorize @status
	end

	def new
		@status = Status.new
		authorize @status
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

	def update
		@status = Status.find params[:id]
		if @status.update status_params
			redirect_to statuses_path
		else
			render 'edit'
		end
	end

	def edit
		@status = Status.find params[:id]
		authorize @status
	end

	def destroy
		@status = Status.find params[:id]
		authorize @status
		@status.destroy!
		redirect_to statuses_path
	end

	private
	def status_params
		return params.require(:status).permit(:name, :requires_assignee)
	end

end
