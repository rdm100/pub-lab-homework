require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drinks.rb")
require_relative("../customer.rb")


class CustomerTest < MiniTest::Test

	def setup
		drink1 = Drinks.new("Lager", 3.25)
		drink2 = Drinks.new("Wine", 2.25)
		@drink = [drink1, drink2]
		@pub = Pub.new("The Crazy Horse", 110.00, @drink)
		@customer = Customer.new("Dave", 20.00)
	end


	def test_customer_buy_drink
		
		assert_equal(1, @customer.customer_buy_drink("Lager", @pub))
		assert_equal(113.25, @pub.till_total)
	end	
	
		def test_customer_minus_wallet
		
		assert_equal(16.75, @customer.customer_minus_wallet("Lager", @pub))

	end	

end