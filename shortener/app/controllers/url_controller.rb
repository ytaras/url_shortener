class UrlController < ApplicationController

  def index
    @urls = Url.all
    respond_to do |f|
      f.html
    end
  end

  def create
    @created = Url.generate(params[:url]) # TODO XSS possible
    redirect_to url_url(@created)
  end

  def show
    @url = Url.find(params[:id])
    respond_to do |f|
      f.html
    end
  end

  def new
  end
end
