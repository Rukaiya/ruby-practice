class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def set_price(amount)
    @price = amount
  end

  def price=(amount)
    @price = amount 
  end

  def price
    @price
  end
end

ticket = Ticket.new("Town Hall", "2013-11-12")
ticket.set_price(63.00)
puts "The ticket costs $#{"%.2f" % ticket.price}."
ticket.price = 54.900
puts ticket.price