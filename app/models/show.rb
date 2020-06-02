class Show < ActiveRecord::Base
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    self.where("rating = ?", self.highest_rating).first
    binding.pry
  end

  def lowest_rating 
    self.minimum(:rating)  
  end
  
  
end