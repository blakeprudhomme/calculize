class HomeController < ApplicationController
  def index; end

  def calculate
    @data = params[:data]

    respond_to do |format|
      format.js
    end
  end
end
