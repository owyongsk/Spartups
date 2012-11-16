class PagesController < ApplicationController
  def home
    @title = "Spartups"
  end

  def about
    @title = "About Spartups"
  end

  def excel
    if current_user and (current_user.id == 3 or current_user.id == 1)
      @profiles = Profile.all
      respond_to do |format|
        format.xls
      end
    else
      redirect_to root_path
    end
  end
end
