class UsersController < ApplicationController
  def get
    render :json => User.get_by_id(params[:id])
  end
end
