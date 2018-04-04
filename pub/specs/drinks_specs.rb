require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drinks.rb")
require_relative("../customer.rb")


class DrinkTest < MiniTest::Test

	def setup
		drink1 = Drinks.new("Lager", 3.25)
		drink2 = Drinks.new("Wine", 2.25)
		@drink = [drink1, drink2]
		@pub = Pub.new("The Crazy Horse", 110.00, @drink)
		@customer = Customer.new("Dave", 20.00)
	end


	def test_get_specific_drink_price

		assert_equal(3.25, @pub.get_specific_drink_price("Lager"))
	end	

end
