class Ride < ActiveRecord::Base
    belongs_to :attraction
    belongs_to :user

    def take_ride
        if user.tickets < attraction.tickets
            "Sorry. You do not have enough tickets to ride the #{attraction.name}."
        elsif user.height < attraction.height
            "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the Roller Coaster."
        end
    end
end
