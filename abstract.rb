class Abstract
  def initialize(price, serving=false)
    @price = price
    @serving = serving
  end

  def payment
    order
  end

  private
  def order
    puts serving=true ? @price * 2 : @price * 1 
  end

end

mechado = Abstract.new(50, false)
puts mechado.payment
