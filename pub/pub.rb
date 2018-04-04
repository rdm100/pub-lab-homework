class Pub

attr_reader :name, :till_total, :drink
def initialize(name, till_total, drink)
@name = name
@till_total = till_total
@drink = drink
end

def pub_name 
	return @name
end	

def till_total 
	return @till_total
end	

def get_pub_menu 
	return @drink
end	

def get_specific_drink_price(drink_name)
	for drink in @drink
		if drink.name == drink_name
			return drink.price
		end
	end

end	

def get_specific_drink_name(drink_name)
	for drink in @drink
		if drink.name == drink_name
			return drink.name
		end
	end
end	

def buy_drink(drink_name) 
	drink_bought = get_specific_drink_name(drink_name)
	drink_price = get_specific_drink_price(drink_name)
	@till_total += drink_price
	return drink_bought
end	
	

end