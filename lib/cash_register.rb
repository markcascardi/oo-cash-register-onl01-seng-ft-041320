class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    i = 0
    while i < quantity
      @items.push(title)
      i += 1
    end

    @total += price * quantity
    @last_item = price * quantity
  end

  def apply_discount
    if @discount == 0.0
      "There is no discount to apply."
    else
      @total *= (1.0 - @discount/100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @last_item
  end

  def items
    @items
  end
end
