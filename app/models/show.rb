class Show < ActiveRecord::Base
  
    def self.highest_rating
        Show.maximum(:rating)
    end

    def self.most_popular_show
        self.highest_rating.maximum#use this as helper method
      #why is it :rating, :name, etc?
    end

    def self.lowest_rating
        Show.minimum(:rating)
    end

    def self.least_popular_show
        Show.minimum(:rating)
        
    end

    def self.ratings_sum
        Show.sum(:rating)
    end

    def self.popular_shows
        Show.where('rating > 5') #interesting that we put this in string
    end

    def self.shows_by_alphabetical_order
        Show.order(:name) 
    end
end