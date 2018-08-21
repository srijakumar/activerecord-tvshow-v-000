#contains models - In sinatra contains MVC
class Show < ActiveRecord::Base

  def highest_rating
    #needs to return show name
    return "#{self.name} where #{self.maximum(:rating)}"
  end

  def most_popular_show
    Show.highest_rating
  end

  def lowest_rating
    Show.minimum(:rating)
  end

  def least_popular_show
    Show.lowest_rating
  end

end
