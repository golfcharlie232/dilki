module Methods
class GetLangs

  def self.run(api_key)
   Api.post(path,{key: api_key, format: 'json'})
  end

private

  def self.path
   '/api/v1.5/tr.json/getLangs'
  end
 end
end
