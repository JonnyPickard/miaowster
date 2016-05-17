class EndorsementsController < ApplicationController
  def create
    @image = Image.find(params[:image_id])
    if @image.endorsements.exists?(user_id: current_user.id)
      redirect_to images_path
    else
      @image.endorsements.create(user_id: current_user.id)
      redirect_to images_path
    end
  end
end
