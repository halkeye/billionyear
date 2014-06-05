class MainController < ApplicationController
  BILLION_SECONDS = 1000000000

  def index
  end
  
  def create
    redirect_to main_path(params[:id])
  end

  def show
    @time = Time.parse(params[:id]).utc
    @one_billion_time = Time.at(@time.utc.to_i+BILLION_SECONDS)
  end
end
