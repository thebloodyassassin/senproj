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
		@event = Event.new(params[:name])

		@event.save
	end

	def update

	end

	def destroy

	end
end
