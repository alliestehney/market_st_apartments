require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/apartment'
require './lib/renter'

class ApartmentTest < Minitest::Test
    def test_it_adds_a_renter
        apt = Apartment.new({ number: 1, monthly_rent: 800, bathrooms: 2, bedrooms: 4 })
        joe = Renter.new("Joe")
        actual = apt.add_renter(joe)
        assert_equal apt.renter.name, "Joe"
    end
end
