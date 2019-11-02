class User < ApplicationRecord

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']

      if auth['info']
         user.name = auth['info']['name'] || ""
      end
    end
  end

  def admin?
    email == 'bshyman@gmail.com'
  end
end
