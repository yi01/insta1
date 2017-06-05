class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(create_params)
    if @picture.save
      redirect_to :root
    end
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update(create_params)
      redirect_to :root
    else
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to :root
  end

  private
  def create_params
    params.require(:picture).permit(:image, :comment).merge(user_id: current_user.id)
  end
end
