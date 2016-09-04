class TweetsController < ApplicationController

	def index
		@tweets = Tweet.all
	end

  	def new
  	end

 	def create
	  @tweet = Tweet.new
	  @tweet.body = params[:body]
	  @tweet.save
	  redirect_to tweet_path(@tweet.id)
	end

	def show
    	@tweet = Tweet.find(params[:id])
 	end

end
