class EventsController < ApplicationController
	def index
		@events = Event.all			
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(create_params)

		if @event.save
			redirect_to events_path
		else
			render 'new'
		end
	end

	def update
		@event = Event.find(params[:id])

		if @event.update_attributes(edit_params)
			redirect_to events_path
		else
			render 'edit'
		end
	end

	def destroy
		@event = Event.find(params[:id])

		if @event.destroy
			redirect_to events_path
		else
			redirect_to events_path
		end
	end

	def edit
		@event = Event.find(params[:id])
	end

	def destroy_all
		@events = Event.all

		@events.destroy
		redirect_to events_path
	end

	private
		def create_params
			params.require(:event).permit(:event, :name, :descrip, :coord)
		end

		def edit_params
			params.require(:event).permit(:event, :name, :descrip, :coord)
		end
end
