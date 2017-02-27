require "dilki/version"
require 'api'
require "methods/detect.rb"
require "methods/get_langs.rb"
require "methods/translate.rb"

module Dilki
class YaClient

  def initialize(api_key)
   @api_key = api_key
   end

  def get_langs
   data = ::Methods::GetLangs.run(api_key)
   data['dirs'].first
  end

  def detect(text)
   data = ::Methods::DetectLangs.run(api_key, text)
   data['lang']first
  end

  def translate(text, from="en", to = "ru")
   data = ::Methods::Translate.run(api_key, text, from, to)
   data['text'].first
  end

 private

 attr_reader :api_key

 end
end
