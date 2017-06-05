class TopController < ApplicationController
  def index
    @pictures = Picture.order('created_at DESC')
  end
end
