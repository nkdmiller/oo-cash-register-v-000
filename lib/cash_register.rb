class CashRegister
  attr_accessor :total :discount

  def CashRegister.new(discount)
    @discount = discount
    @total = 0
  end
end
