class ServicesController < ApplicationController
  def add_service
    # params = {name: 'facebook'}
    s = Service.new
    s.name = params[:name]
    s.save
    render :json => s
  end
end