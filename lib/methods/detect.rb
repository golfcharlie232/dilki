module Methods
class DetectLangs

  def self.run(api_key, text)
   Api.post(path, {key: api_key, text: text, format: 'json'})
  end

private

  def self.path
   '/api/v1.5/tr.json/detect'
  end
 end
end
