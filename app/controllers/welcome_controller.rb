class WelcomeController < ApplicationController
  def root
    if !current_user
      redirect_to login_path
    else
      redirect_to links_path
    end
  end
end
