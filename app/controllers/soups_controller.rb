class SoupsController < ApplicationController
  def index
    @soups = Soup.all
  end

  def show
    @soup = Soup.find(params[:id])
  end
end
