class Friendship < ApplicationRecord
	belongs_to :member
	belongs_to :friend, :class_name => 'Member'
	validates_presence_of :member
end
