class Customer

attr_reader :name, :wallet

def initialize(name, wallet)
@name = name
@wallet = wallet
@order = []
end

def customer_buy_drink(drink_name, pub)
	drink = pub.buy_drink(drink_name)
	@order.push(drink)
	return @order.count		
end	

def customer_minus_wallet(drink_name, pub)
	drink = pub.get_specific_drink_price(drink_name)
	return @wallet -= drink
end	

end