class PagesController < ApplicationController
  def home
    @title = "Welcome to Spartups"
    @profile = current_user.profile if user_signed_in?
  end
end
