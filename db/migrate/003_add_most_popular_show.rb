class AddMostPopularShow < ActiveRecord::Migration[5.2]

  def self.highest_rating
    Show.all.maximum(:rating)
  end

end
