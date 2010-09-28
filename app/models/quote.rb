class Quote < Post
  validates_presence_of :title, :body, :source
  
  def body
    post_data[:body]
  end
  
  def body=(value)
    self.post_data[:body] = value
  end
  
  def title
    post_data[:title]
  end
  
  def title=(value)
    self.post_data[:title] = value
  end
  
  def source
    post_data[:source]
  end
  
  def source=(value)
    self.post_data[:source] = value
  end
end
