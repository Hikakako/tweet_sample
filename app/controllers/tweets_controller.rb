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
	end

end
