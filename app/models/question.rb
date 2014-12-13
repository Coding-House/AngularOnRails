class Question < ActiveRecord::Base

  def gravatar_url
    Gravatar.new(email).image_url
  end

end
