class Article < Post
  validates_presence_of :content, :title
  
  def title
    post_data[:title]
  end
  
  def title=(value)
    self.post_data[:title] = value
  end
  
  def content
    post_data[:content]
  end
  
  def content=(value)
    self.post_data[:content] = value
  end
  
  def excerpt
    post_data[:content].scan(/(.{1,200}[.])\s.*\m\s/) unless post_data[:content].nil?
    #post_data[:excerpt]
  end
  
  #def excerpt=(value)
  #  self.post_data[:excerpt] = value
  #end
end
