class ApplicationController < ActionController::Base
  protect_from_forgery

  def home
		@paiting = Painting.all
	end

	def show
		@painting = Painting.find(params[:id]) 
	end
end
