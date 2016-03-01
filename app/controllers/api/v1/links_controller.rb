class Api::V1::LinksController < ApplicationController
  respond_to :json

  def index
    respond_with current_user.links
  end

  def update
    respond_with Link.update(params[:id], link_params)
  end

  private

  def link_params
    params[:id] = params[:id].to_i
    params.require(:link).permit(:title, :url, :read)
  end
end
