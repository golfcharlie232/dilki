require './dilki/version.rb'
require './configuration.rb'
require './api.rb'
require './methods/detect.rb'
require './methods/get_langs.rb'
require './methods/translate.rb'

module Dilki
class Client < Configuration

  def get_langs
   data = ::Methods::GetLangs.run(api_key)
   data['dirs']
  end

  def detect(text)
   data = ::Methods::DetectLangs.run(api_key, text)
   data['lang']
  end

  def translate(text, from="en", to = "ru")
   data = ::Methods::Translate.run(api_key, text, from, to)
   data['text'].first
  end

 private

 attr_reader :api_key

 end
end
