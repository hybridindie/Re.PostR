class Video < Post
  
  # Add function to create title on file upload with a humanized file name
  #    Validation added in the mean time
  def title
    post_data[:title]
  end
  
  def title=(value)
    self.post_data[:title] = value
  end
  
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
