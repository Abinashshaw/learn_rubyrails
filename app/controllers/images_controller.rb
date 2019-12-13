class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

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
  end

  def edit
  end

  def update
    @image = Image.find(params[:id])
    if @image.update(image_params)
      flash[:notice] = "Image is updated successfully"
      redirect_to image_path(@image)
    else
      render "edit"
    end
  end

  def destroy
    @image.destroy
    flash[:notice] = "Image is successfully destroyed"
    redirect_to images_path
  end

  private
  def set_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:name, :picture, :caption)
  end
end