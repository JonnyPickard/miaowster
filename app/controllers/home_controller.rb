class HomeController < ApplicationController

  def index
    @images = Image.first(10)
    @comment = Comment.new
  end
end
