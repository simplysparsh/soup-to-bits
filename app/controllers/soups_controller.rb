class SoupsController < ApplicationController
  before_action :fetch_soup, only: [:show, :edit, :update, :destroy, :toggle_featured]

  def index
    @soups = Soup.all

    respond_to do |format|
      format.html #render index.html.erb
      format.json {render json: @soups}
      format.xml {render xml: @soups}
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def toggle_featured
    @soup.toggle!(:featured)
    redirect_to soup_path
  end

  private

  def fetch_soup
    @soup = Soup.find(params[:id])
  end
end
