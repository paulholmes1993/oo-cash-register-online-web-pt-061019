class CashRegister
  attr_accessor :discount, :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    item_info = {}
    item_info[:name] = item
    item_info[:price] = price
    item_info[:quantity] = quantity

    @cart << item_info
  end

def apply_discount
  if @discount == 0
     "There is no discount to apply."
  end
  @total -= @total * @discount / 100
   "After the discount, the total comes to $#{@total}."
end

def items




end
