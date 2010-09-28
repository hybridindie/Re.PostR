class Photo < Post
  mount_uploader :attachment, AttachmentUploader
  
  # Add function to create title on file upload with a humanized file name
  #    Validation added in the mean time
  def title
    post_data[:title]
  end
  
  def title=(value)
    self.post_data[:title] = value
  end
  
  def caption
    post_data[:caption]
  end
  
  def caption=(value)
    self.post_data[:caption] = value
  end
    
end
