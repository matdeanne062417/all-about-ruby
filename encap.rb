class Matthew
  def initialize (preptime, cooktime)
    @preptime = preptime
    @cooktime = cooktime
  end

  def total
    @preptime * @cooktime
  end
end

lechon = Matthew.new(23, 34)
puts lechon.total
