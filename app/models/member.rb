class Member < ApplicationRecord
	has_many :friendships
	has_many :friends, through: :friendships
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :url, presence: true

	serialize :header

	def self.generate_short_url
  		('A'..'Z').to_a.shuffle[0,5].join
  	end
end
