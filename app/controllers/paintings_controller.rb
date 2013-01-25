class PaintingsController < ApplicationController
	def new
		@painting = Painting.new
	end

	def create
		@painting = Painting.new(params[:painting])

		if @painting.save
			redirect_to root_path
		else
			render :new
		end
	end

	def show
		@painting = Painting.find(params[:id])
	end
end

