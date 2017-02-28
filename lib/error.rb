class Error < StandardError
  def self.detect_error(data)
   if data['code'] and data['code'].to_i != 200
   fail Error, data['message']
  end
 end
end
