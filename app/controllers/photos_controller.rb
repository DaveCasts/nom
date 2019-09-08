class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params(user: current_user))
    redirect_to place_path(@place)
  end

  def photo_params
    params.require(:photo).permit(:caption, :picutre)
  end
end
