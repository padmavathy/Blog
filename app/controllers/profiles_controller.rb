class ProfilesController < ApplicationController
	def index
		@profile=current_user.profile
	end
	def new
		@profile=Profile.new
	end
	def create
		@profile=Profile.new(params[:profile])
		@user=current_user
		@user.profile=@profile
		@profile.user_id=current_user.id
		if @profile.save
			redirect_to profiles_path
			else
				render :new
			end
			end
			def edit
				@profile=Profile.find(params[:id])
			end
			def show
				@profile=Profile.find(params[:id])
			end
		def update
		@profile=Profile.find(params[:id])
		if @profile.update_attributes(params[:profile])
			redirect_to profiles_path
			else
				render :edit
			end
			end
			def destroy
				@profile=Profile.find(params[:id])
				@profile.destroy
				redirect_to profiles_path
				end
end
