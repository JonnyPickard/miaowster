class EndorsementsController < ApplicationController
  def create
    @image = Image.find(params[:image_id])
    @image.endorsements.create
    redirect_to images_path
  end
end
