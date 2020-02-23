class CashRegister 
  
  attr_accessor :discount, :total, :price, :items
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def total 
    @total 
  end
  
  def add_item(item, price, quantity=1) 
    @price = price 
    @total += price * quantity
    @items << item
  end 
  
  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items 
    @items
  end 
  
  def void_last_transaction
    
  end 
  
end 