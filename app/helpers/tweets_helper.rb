module TweetsHelper
  
  def tweetify_text(text)
    out = text.gsub(/@(\w*)/i) { link_to("@#{$1}", "http://twitter.com/#{$1}") }
    out = auto_link(out)
  end
  
end
