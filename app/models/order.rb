class Order < ActiveRecord::Base
  
  before_save :cal_total
  
  has_many :line_items
  belongs_to :interval
  
  private
  def cal_total
    self.total = 0 
    line_items.each { |i| self.total += i.amount }
  end
  
end
