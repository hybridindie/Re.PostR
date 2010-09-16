class Video < Post
  validates_presence_of :embed_code
  
  def embed_code
    post_data[:embed_code]
  end
  
  def embed_code=(value)
    self.post_data[:embed_code] = value
  end
  
  def caption
    post_data[:caption]
  end
  
  def caption=(value)
    self.post_data[:caption] = value
  end
end
