class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def create
    @tweet = Tweet.new(tweet_params)
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def tweet_params
    params.require(:tweet).permit(:body, :published)
  end
end
