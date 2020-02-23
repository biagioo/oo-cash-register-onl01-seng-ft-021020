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
  
  def apply_discount
    employee_discount = price * .20
    @discount -= employee_discount
    
  end 
  
  def items 
    @items
  end 
  
  def void_last_transaction
    
  end 
  
end 