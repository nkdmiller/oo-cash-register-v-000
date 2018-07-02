class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    @total = @total * ((100 - @discount).to_f / 100.00)
    if @discount == 0
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply"
    end
  end
end
