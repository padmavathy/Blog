class AdminController < ApplicationController
  def index
    @user=User.all
    @profile=Profile.find_all_by_user_id(@user)
    p @profile
  end

  def destroy
    @profile=Profile.find(params[:id])
   @user=User.find_by_id(@profile.user_id)
   @user.destroy
    redirect_to admin_index_path
  end

  def show
        respond_to do |format|
    @profile=Profile.find(params[:id])
     format.js
     end

    end
  
end
