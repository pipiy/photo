class HomeController < ApplicationController
  def index
    @paintings = Painting.all
  end
end

