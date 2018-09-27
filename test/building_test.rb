require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/building'
require './lib/renter'

class BuildingTest < Minitest::Test
    def test_it_adds_a_unit
        building = Building.new
        apt = Apartment.new({ number: 1, monthly_rent: 800, bathrooms: 2, bedrooms: 4 })
        building.add_unit(apt)
        assert_equal building.units.count, 1
    end

    def test_average_monthly_rent
        building = Building.new
        apt1 = Apartment.new({ number: 1, monthly_rent: 800, bathrooms: 2, bedrooms: 4 })
        apt2 = Apartment.new({ number: 2, monthly_rent: 600, bathrooms: 1, bedrooms: 2 })
        building.add_unit(apt1)
        building.add_unit(apt2)
        assert_equal building.average_rent, 700
    end

    def test_total_annual_rent
        building = Building.new
        apt1 = Apartment.new({ number: 1, monthly_rent: 800, bathrooms: 2, bedrooms: 4 })
        apt2 = Apartment.new({ number: 2, monthly_rent: 600, bathrooms: 1, bedrooms: 2 })
        building.add_unit(apt1)
        building.add_unit(apt2)
        assert_equal building.total_annual_rent, 16800
    end

    def test_building_occupancy
        building = Building.new
        apt1 = Apartment.new({ number: 1, monthly_rent: 800, bathrooms: 2, bedrooms: 4 })
        apt2 = Apartment.new({ number: 2, monthly_rent: 600, bathrooms: 1, bedrooms: 2 })
        allie = Renter.new("Allie")
        apt1.add_renter(allie)
        building.add_unit(apt1)
        building.add_unit(apt2)
        assert_equal building.occupancy, 50.0
    end
end
