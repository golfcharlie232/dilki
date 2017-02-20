require 'spec_helper'

describe Dilki::YandexApiTranslate do
 let(:api_key) { 'trnsl.1.1.20170201T165242Z.1fcac397f9d0a37e.0a8ce6a2d65e461173e5b8f9be1c395471e1a3d1' }

 subject(:YandexApiTranslate) { Dilki::YandexApiTranslate.new(api_key) }

 describe '::translate' do
   before do
     expect_any_instance_of(Dilki::YandexApiTranslate).to receive(:translate)
     Dilki::YandexApiTranslate.new(api_key)
   end

   it 'calls translate method ' do
     Dilki::YandexApiTranslate.new(api_key).translate('Bar', 'ru', 'en')
   end
 end

 describe '::get_langs' do
   before do
     expect_any_instance_of(Dilki::YandexApiTranslate).to receive(:get_langs)
     Dilki::YandexApiTranslate.new(api_key)
   end

   it 'calls translate method' do
     Dilki::YandexApiTranslate.new(api_key).get_langs
   end
 end

 describe '::detect' do
   before do
     expect_any_instance_of(Dilki::YandexApiTranslate).to receive(:detect)
     Dilki::YandexApiTranslate.new(api_key)
   end

   it 'calls translate method' do
     Dilki::YandexApiTranslate.new(api_key).detect('first')
   end
 end



 describe '#translate' do
   let(:translate_url) { 'https://translate.Dilki.net/api/v1.5/tr.json/translate' }
   let(:translate_request_body) { "text=Car&lang=ru&key=#{api_key}" }
   let(:translate_response_body) do
     '{"code":200, "lang": "en-ru", "text": ["Первй"]}'
   end

   let!(:translate_request) do
     stub_request(:post, translate_url)
       .with(body: translate_request_body)
       .to_return(
         body: translate_response_body,
         headers: {'Content-Type' => 'application/json'}
       )
   end
 end
end
