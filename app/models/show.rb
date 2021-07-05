class Show < ActiveRecord::Base

  def self.highest_rating
    Show.all.maximum(:rating)
  end

  def self.most_popular_show
    Show.all.each do |show|
      if show.rating == Show.highest_rating
        return show
      end
    end
  #   # this method should return the show with the highest
  #   # rating. _hint_: use the `highest_rating` method as a helper method.
  end
  #
  def self.lowest_rating
    Show.all.minimum(:rating)
  #   # returns the lowest value in the ratings column
  end
  #
  def self.least_popular_show
    Show.all.each do |show|
      if show.rating == Show.lowest_rating
        return show
      end
    end
  end
  #
  def self.ratings_sum
    Show.sum(:rating)
  #   # returns the sum of all of the ratings.
  end
  #
  def self.popular_shows
    Show.all.select {|show| show.rating > 5}
  #   # returns an array of all of the shows that have a rating
  #   # greater than `5`. _hint_: use the `where` Active Record method.
  end
  #
  def self.shows_by_alphabetical_order
    Show.order(:name)
  #   # returns an array of all of the shows sorted by
  #   # alphabetical order according to their names. _hint_: use the `order` Active
  #   # Record method
  end

end
