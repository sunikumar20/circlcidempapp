class DashboardController < ApplicationController

	def index
		render json: { data: User.search('*').results }, status: 200
	end
end
