class PagesController < ApplicationController
  respond_to :json 

  def home
    @page_title = "Home"
    render json: @page_title
  end

  def about
    @page_title = "About"
    render json: @page_title
  end

  def contact
    @page_title = "Contact"
    render json: @page_title
  end

  def user_check
  end

  def options
    @page_title = "Options"
    render json: @page_title
  end
end
