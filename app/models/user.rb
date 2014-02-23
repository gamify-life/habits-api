class User < ActiveRecord::Base
  def self.get_by_id(id)
    User.find(id)
  end
end
