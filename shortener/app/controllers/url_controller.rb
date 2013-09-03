class UrlController < ApplicationController

  def index
    @urls = Url.all
    respond_to do |xf|
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

  def redirect
    @url = Url.by_short(params[:id]).first
    if @url.nil?
      render text: 'Not found', status: :not_found
    else
      redirect_to @url.full
    end
  end
end
