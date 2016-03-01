class LinksController < ApplicationController
  def index
    if current_user
      @link = Link.new
      @links = current_user.links
    else
      redirect_to login_path
    end
  end
end
