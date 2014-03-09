class User < ActiveRecord::Base
  def self.get_by_id(id)
    User.find(id)
  end

  def self.auth_with_facebook(params)
    if User.exists?(:facebook_id => params[:facebook_id])
      #update access_token
      u = User.find_by :facebook_id => params[:facebook_id]
      u.facebook_access_token = params[:facebook_access_token]
      u.save
    else
      u = User.new
      u.name = params[:name]
      u.email = params[:email]
      u.facebook_id = params[:facebook_id]
      u.facebook_username = params[:facebook_username]
      u.facebook_access_token = params[:facebook_access_token]
      u.save
    end
    @graph = Koala::Facebook::API.new(u.facebook_access_token)
    begin
      friends = @graph.get_connections("me", "friends")
    rescue Koala::Facebook::AuthenticationError
      {}
    end
  end
end
