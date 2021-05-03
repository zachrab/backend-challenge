class FriendshipsController < ApplicationController
	def create
		member = Member.find_by(id: params[:friendship][:member_id].to_i)
		if !member
			payload = {error: 'No such Member exists!', status: 404}
			render json: payload, status: 404
		else
			@friendship = member.friendships.build(:friend_id => params[:friendship][:friend_id])
			if @friendship.save
				payload = {message: 'Friendship created!', status: 200}
				render json: payload, status: 200
			else
				payload = {error: 'Friendship could not be created!', status: 500}
				render json: payload, status: 500
			end
		end
	end
end