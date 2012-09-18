class RelationsController < ApplicationController
  before_filter :authenticate_user!
  #before_filter :authorized_user, :only => :destroy

  def create
    @relation = Relation.new(params[:relation])
    if @relation.save
      flash.now[:success] = "You are now supporting this project"
      redirect_to @relation.project
    else
      flash.now[:error] = "An error occured, you can't support this project. ):"
      redirect_to @relation.project
    end
  end

  def destroy
    @relation = Relation.find(params[:id])
    @relation.destroy
    redirect_to projects_path
    flash.now[:error] = "You have now withdrew your support ):"
  end

  private
    def authorized_user
      @relation = current_user.profile.relation.find_by_id(params[:id])
      redirect_to root_path if @relation.nil?
    end
end
