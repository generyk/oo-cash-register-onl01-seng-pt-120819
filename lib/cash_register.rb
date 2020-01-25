class CashRegister
  attr_accessor :total, :discount, :price, :items, :last_transaction, :title

  def initialize(discount=0) 
    @items = []
    @total = 0 
    @discount = discount
  end
  
  def total
    @total
  end   
  
  def add_item(title,price,quantity=1)
    @title = title
    @price = price
    @total += price * quantity
    @last_transaction = @total
  
    if quantity > 1 
       i = 0 
      while i < quantity 
       @items << title
       i += 1
     end
   else
    @items << title
    end
     @last_transaction = @total
    @total
  end 
  
  def apply_discount
    if discount > 0 
    new_price = (price*discount)/100
    @total -= new_price
    "After the discount, the total comes to $#{@total}."
    else 
    "There is no discount to apply."
    end 

  end

  def void_last_transaction
    @total -= @price 
    @last_transaction = 0.00  
  end
end
