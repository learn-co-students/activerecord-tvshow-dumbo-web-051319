class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end
  def self.most_popular_show
    all.find {|show| show.rating == highest_rating}
  end
  def self.lowest_rating
    self.minimum(:rating)
  end
  def self.least_popular_show
    all.find do |show|
      show.rating == lowest_rating
    end
    # ary = where ("rating = #{lowest_rating}")

  end
  def self.ratings_sum
    self.sum(:rating)
  end
  def self.popular_shows
    all.select {|show| show.rating > 5}
  end
  def self.shows_by_alphabetical_order
    all.sort_by {|show| show.name}
  end
end
