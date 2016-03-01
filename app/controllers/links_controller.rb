class LinksController < ApplicationController
  def index
    if current_user
      @link = Link.new
      @links = current_user.links
    else
      redirect_to login_path
    end
  end

  def create
    link = Link.new(link_params)
    link.user_id = current_user.id
    if link.save
      flash[:messages] = 'Link Saved!'
      redirect_to links_path
    else
      flash[:errors] = link.errors.full_messages.join(', ')
      redirect_to :back
    end
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    link = Link.find(params[:id])
    if link.update(link_params)
      flash[:messages] = "Link Updated"
      redirect_to links_path
    else
      flash[:errors] = link.errors.full_messages.join(", ")
      redirect_to :back
    end
  end

  private

  def link_params
    params.require(:link).permit(:title, :url)
  end
end
