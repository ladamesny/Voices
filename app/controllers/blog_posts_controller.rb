class BlogPostsController < ApplicationController
  include HTTParty

  def index
    posts = HTTParty.get('https://public-api.wordpress.com/rest/v1.1/sites/tryvoices.wordpress.com/posts')
    @blog_posts = posts['posts']
  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def delete

  end


end
