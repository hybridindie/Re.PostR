module ArticlesHelper
  def get_excerpt(v)
    v.content.scan('/(.{1,250}\.)\s.*/ms','\1') unless v.excerpt
  end
end
