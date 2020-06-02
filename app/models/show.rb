class Show < ActiveRecord::Base
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    self.where("rating = ?", self.highest_rating).first
    # Check out 2.2 Array Conditions: https://guides.rubyonrails.org/v5.2/active_record_querying.html
  end

  def lowest_rating 
    self.minimum(:rating)  
  end
  
  
end