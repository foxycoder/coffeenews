class FeedsController < ApplicationController
  http_basic_authenticate_with name: "feeder", password: "feedee"
  def index
    @feeds = Feed.all
  end

  def new
    @feed = Feed.new
  end

  def create
    @feed = Feed.new(feed_params)
    if @feed.save
      redirect_to action: :index
    else
      render 'new'
    end
  end

  def destroy
    @feed = Feed.find(params[:id])
    @feed.destroy
    redirect_to feeds_path
  end

  private
    def feed_params
      params.require(:feed).permit(:name, :url)
    end
end
