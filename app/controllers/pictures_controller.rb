class PicturesController < ApplicationController
	def index
		@pictures = Picture.all.reverse
	end

	def show
		@picture = Picture.find(params[:id])
		# Picture is a class, need a method to find the data(using .find here)
	end

	def new
		@picture = Picture.new
	end

	def create
		@picture = Picture.new(params[:picture])
	  if @picture.save
	    # if the save for the picture was successful, go to index.html.erb
	    redirect_to pictures_url
	  else
	    # otherwise render the view associated with the action :new (i.e. new.html.erb)
	    render :new
	  end
	end

	def edit
		@picture = Picture.find(params[:id])
	end

	def update
		@picture = Picture.find(params[:id])
		if @picture.update_attributes(params[:picture])
			redirect_to @picture
		else
			render :edit
		end
	end

end