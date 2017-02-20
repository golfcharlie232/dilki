require 'erorr'
require "http"

class Api

  def self.post(path, params)
   response = HTTP.post(url_builder(path), form: params)
   data = JSON.parse(response.body)
   Error.detect_error(data['code'])
   data
  end

  def self.url_builder(path)
   URI::HTTPS.build(
   host: 'translate.yandex.net',
   path: path
   ).to_s
  end
end
