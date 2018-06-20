class PagesController < ApplicationController
  def index
    @client = Client.new
  end

  def about
  end
end
