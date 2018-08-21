#contains models - In sinatra contains MVC
#scope methods - way of narrowing down a query
class Show < ActiveRecord::Base

  def self.highest_rating
    #needs to return show name
    self.maximum(:rating)
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def most_popular_show
    self.each do |t|
      t.where.highest_rating
    end
  end

  def least_popular_show

  end

  def popular_shows

  end

  def shows_by_alphabetical_order

  end

end
