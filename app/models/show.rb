class Show < ActiveRecord::Base
  
  def self.highest_rate
    self.maximum(:rating)
  end

end