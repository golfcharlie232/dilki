module Methods
class Translate

  def self.run(api_key, text, from, to)
   Api.post(path,{key: api_key, lang: "#{from}-#{to}", text: text, format: 'json'})
  end

private

  def self.path
   '/api/v1.5/tr.json/translate'
  end
 end
end
