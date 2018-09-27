class Apartment
    attr_accessor :number, :monthly_rent, :bathrooms, :bedrooms, :renter

    def initialize(apartment)
        @number = apartment[:number]
        @monthly_rent = apartment[:monthly_rent]
        @bathrooms = apartment[:bathrooms]
        @bedrooms = apartment[:bedrooms]
        @renter = nil
    end

    def add_renter(user)
        @renter = user
    end
end
