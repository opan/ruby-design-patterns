class Payment
  def pay(amount); end
end

class Cash < Payment
  def pay(amount)
    puts "Pay for #{amount} with cash"
  end
end

class CreditCard < Payment
  def pay(amount)
    puts "Pay for #{amount} with credit card"
  end
end

def get_payment_method(payment_method = :cash)
  case payment_method
  when :cash
    Cash.new
  when :cc
    CreditCard.new
  end
end
