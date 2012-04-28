class StaticPagesController < ApplicationController
  def home
    #require 'debugger'; debugger
  	if signed_in?
  		@micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @crap = "crap"
  	end
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
