class Quote < Post
  validates_presence_of :body, :source
  
  def body
    post_data[:body]
  end
  
  def body=(value)
    self.post_data[:body] = value
  end
  
  def source
    post_data[:source]
  end
  
  def source=(value)
    self.post_data[:source] = value
  end
end
