class Audio < Post
  
  # Add function to create title on file upload with a humanized file name
  #    Validation added in the mean time
  def title
    post_data[:title]
  end
  
  def title=(value)
    self.post_data[:title] = value
  end
  
  def description
    post_data[:description]
  end
  
  def description=(value)
    self.post_data[:description] = value
  end
end
