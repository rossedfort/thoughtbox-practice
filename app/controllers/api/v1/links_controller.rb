class Api::V1::LinksController < ApplicationController
  respond_to :json

  def index
    respond_with current_user.links
  end

  def destroy
    Link.find(params[:id]).destroy
    respond_with current_user.links
  end

  def update
    link = Link.find(params[:id])
    if link.update(link_params)
      respond_with(link, status: 200, location: api_v1_link_path(link))
    else
      render json: link.errors, status: 422
    end
  end

  private

  def link_params
    params.require(:link).permit(:title, :url, :read)
  end
end
