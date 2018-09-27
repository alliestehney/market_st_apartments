class Building
    attr_accessor :units

    def initialize
        @units = []
    end

    def add_unit(unit)
        @units << unit
    end

    def average_rent
        total_rent = 0
        @units.each do |unit|
            total_rent += unit.monthly_rent
        end
        total_rent / @units.count
    end

    def total_annual_rent
       total_annual_rent = 0
       @units.each do |unit|
          total_annual_rent += (unit.monthly_rent * 12)
       end
       total_annual_rent
    end

    def occupancy
        total_occupants = @units.select { |unit| unit.renter != nil }
        (total_occupants.count / @units.count.to_f) * 100
    end
end
