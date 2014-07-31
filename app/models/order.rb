class Order < ActiveRecord::Base
  
  has_many :line_items
  belongs_to :interval
  
  def total
    total = 0 
    line_items.each { |i| total += i.amount }
    return total
  end
  
end
