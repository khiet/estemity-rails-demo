class TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    @tweets = Tweet.all
  end

  def create
    @tweet = Tweet.new(tweet_params)

    if @tweet.save
      redirect_to tweets_path
    else
      @tweets = Tweet.all
      render :index
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:body, :published)
  end
end
