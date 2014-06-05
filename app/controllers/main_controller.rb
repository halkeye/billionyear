class MainController < ApplicationController
  BILLION_SECONDS = 1000000000
  def show
    @time = Time.parse(params[:id]).utc
    @one_billion_time = Time.at(@time.utc.to_i+BILLION_SECONDS)
  end
end
