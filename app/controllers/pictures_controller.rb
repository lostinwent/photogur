class PicturesController < ApplicationController
	def index
		@pictures = Picture.all.reverse
	end

	def show
		@picture = Picture.find(params[:id].to_i)
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
	end

end