class Post < ActiveRecord::Base
  serialize :post_data
  
  default_scope :order => "created_at DESC"
  
  def day
    self.created_at.beginning_of_day
  end
end
