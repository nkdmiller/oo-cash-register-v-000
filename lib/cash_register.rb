class CashRegister
  attr_accessor :total, :discount
  @@item = []
  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @@item << title
  end

  def apply_discount
    @total = @total * ((100 - @discount).to_f / 100.00)
    if @discount != 0
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    
end
