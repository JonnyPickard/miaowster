class HomeController < ApplicationController

  def index
    @images = Image.first(10)
  end
end
