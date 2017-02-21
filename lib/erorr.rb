class Error
  def self.detect_error(data)
  case data
  when 200
   p "It` Ok"
  when 401
   p "Api key is invalid"
  when 402
   p "Api key is blocked"
  when 404
   p "Limit for translated"
  when 413
   p "Limit for text size"
  when 422
   p "The text cannot be translated"
  when 501
   p "Translation is not supported"
  else
   p "Unspecified error"
   end
  end
end
