class MembersController < ApplicationController
	def index
		render json: Member.all, status: 200
	end

	def create
		@member = Member.new(first_name: params[:member][:first_name], last_name: params[:member][:last_name], url: params[:member][:url])
		if @member.save
			render json: @member, status: 200
		else
			payload = {error: 'Member could not be created!', status: 500}
			render json: payload, status: 500
		end
	end

	def show
		@member = Member.find_by(id: params[:member_id].to_i)
		if @member
			render json: @member, status: 200
		else
			payload = {error: 'No such Member exists!', status: 404}
			render json: payload, status: 404
		end
	end
end