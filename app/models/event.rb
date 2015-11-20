class Event < ActiveRecord::Base
	belongs_to :user
	has_many :participations
	def participants
		self.participations.map do |p|
			User.find(p.user_id)
		end
	end
end
