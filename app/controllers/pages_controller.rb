class PagesController < ApplicationController
  def home
    @title = "Spartups"
  end

  def about
    @title = "About Spartups"
  end
end
