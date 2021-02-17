require 'pry'
class Show < ActiveRecord::Base

    def self.highest_rating
        Show.maximum("rating")
    end

    def self.most_popular_show
        rating = Show.maximum("rating")
        temp = Show.find_by(rating: "#{rating}")
        temp
    end

    def self.lowest_rating
        Show.minimum("rating")
    end

    def self.least_popular_show
        rating = Show.minimum("rating")
        temp = Show.find_by(rating: "#{rating}")
        temp
    end

    def self.ratings_sum
        Show.sum("rating")
    end

    def self.popular_shows
        temp = Show.where("rating >= '5'")
        temp
    end

    def self.shows_by_alphabetical_order
        Show.order(name: :desc)
    end

end


#temp = Movie.where(release_date: 2000 ).order(release_date: :desc)