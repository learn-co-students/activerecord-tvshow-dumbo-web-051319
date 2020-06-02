class Show < ActiveRecord::Base
  
  def :highest_rate
    self.maximum(:rating)
  end

end