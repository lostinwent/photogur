class PicturesController < ApplicationController
		
	before_filter :get_pic, :except => [:index, :new] 

	def get_pic
			@picture = Picture.find(params[:id])	
	end

	def index
		@pictures = Picture.all.reverse
	end

	def show
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

	def update
		if @picture.update_attributes(params[:picture])
			redirect_to @picture
		else
			render :edit
		end
	end

	def destroy
		@picture.destroy
		redirect_to pictures_path
	end

end