class Order < ActiveRecord::Base

  has_many :line_items
  belongs_to :interval
  def total
    total = 0
    line_items.each { |i| total += i.amount }
    return total
  end

  def quantity
    sum = 0
    self.line_items.each do |item|
      sum += item.quantity
    end
    return sum
  end

end
