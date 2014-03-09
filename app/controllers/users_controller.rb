class UsersController < ApplicationController
  def get
    render :json => User.get_by_id(params[:id])
  end
  def facebook_auth
    # params= {}
    # params[:name] = 'Rahij Ramsharan'
    # params[:email] = 'rahij.ramsharan@gmail.com'
    # params[:facebook_id] = '523392441'
    # params[:facebook_username] = 'rahij.ramsharan'
    # params[:facebook_access_token] = 'access_token'
    render :json => User.auth_with_facebook(params)
  end
end