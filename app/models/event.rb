class Event < ActiveRecord::Base
	belongs_to :user
	has_many :participations
	has_many :comments
	has_attached_file :avatar, styles: { medium: "250x250>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

	def participants
		self.participations.map do |p|
			User.find(p.user_id)
		end
	end
end
