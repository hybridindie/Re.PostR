class Link < Post
  validates_presence_of :url, :title
  
  def title
    post_data[:title]
  end
  
  def title=(value)
    self.post_data[:title] = value
  end
  
  def url
    post_data[:url]
  end
  
  def url=(value)
    self.post_data[:url] = value
  end
  
  def description
    post_data[:description]
  end
  
  def description=(value)
    self.post_data[:description] = value
  end
end
