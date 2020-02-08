class User < ApplicationRecord
  
  validates_presence_of :email
  
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      if auth['info']
        user.name       = auth.dig('info', 'name')
        user.email      = auth.dig('info', 'email')
        user.first_name = auth.dig('info', 'first_name')
        user.last_name  = auth.dig('info', 'last_name')
        # user.image = auth.dig('info', 'image')
      end
    end
  end

  def admin?
    email == 'bshyman@gmail.com'
  end
end
