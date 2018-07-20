class Payment
  def pay(amount)
    puts message(amount)
  end
end

class Cash < Payment
  def message(amount)
    "Pay for #{amount} with cash"
  end
end

class CreditCard < Payment
  def message(amount)
    "Pay for #{amount} with cash"
  end
end
