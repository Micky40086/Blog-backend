class PageController < ApplicationController 
  def index
    @admins = Admin.all
    respond_to do |format|
      format.html
      format.json { render json: @admins }
    end
  end
end