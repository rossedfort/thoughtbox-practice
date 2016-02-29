class LinksController < ApplicationController
  def index
    @link = Link.new
    @links = Link.all
  end

  def create
    link = Link.new(link_params)
    if link.save
      flash[:messages] = 'Link Saved!'
      redirect_to links_path
    else
      flash[:errors] = link.errors.full_messages.join(', ')
      redirect_to :back
    end
  end

  private

  def link_params
    params.require(:link).permit(:title, :url)
  end
end
