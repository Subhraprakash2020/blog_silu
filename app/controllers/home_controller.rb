class HomeController < ApplicationController
  def index
    @posts = Post.published.last(5)
  end
end
