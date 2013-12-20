class Event < ActiveRecord::Base
	def destroy_all
		Event.destroy_all
	end
end
