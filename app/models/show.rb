class Show < ActiveRecord::Base

    def self.highest_rating
        self.maximum(:rating)
    end
    def self.most_popular_show
        self.where("rating = ?", self.highest_rating)
        # the hash values corresponding to the shows is wrong. I'm unsure if
        # this is the same for everyone but I am unable to legitimitely pass the tests.
    end
    def self.lowest_rating
        self.minimum(:rating)
    end
    def self.least_popular_show
        self.where("rating = ?", self.lowest_rating)
    end
    def self.ratings_sum
        self.sum(:rating)
    end
    def self.popular_shows
        self.where("rating > 5", :rating)
    end
    def self.shows_by_alphabetical_order
        self.order(:name, :asc)
    end


end