class ProfilesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :profile_init, :only => [:edit, :update, :show]
  before_filter :correct_user, :only => [:edit, :update]

  def index
    @title = "All Users"
    @profiles = Profile.page(params[:page]).per(20)
  end

  def edit
    @title = "Edit user"
  end

  def update
    if @profile.update_attributes(params[:profile])
      flash[:notice] = "Profile successfully updated."
      redirect_to edit_profile_path
    else
      @title = "Edit user"
      render 'edit'
    end
  end

  def show
    @title = @profile.name
  end

  private
    def profile_init
      @profile = Profile.find(params[:id])
    end

    def correct_user
      redirect_to(root_path) unless current_user == (@profile.user if @profile)
    end
end
