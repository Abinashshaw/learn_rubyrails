class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      flash[:notice] = "Image is saved successfully"
      redirect_to image_path(@image)
    else
      render "new"
    end
  end

  def show
    @image = Image.find(params[:id])
  end

  private
  def image_params
    params.require(:image).permit(:name, :picture, :caption)
  end
end