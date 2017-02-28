module Dilki

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configuration=(configuration)
    @configuration = configuration
  end

  def self.configure
    yield configuration
  end

  class Configuration

    attr_accessor :api_key

    def initialize
      @api_key = "trnsl.1.1.20170201T165242Z.1fcac397f9d0a37e.0a8ce6a2d65e461173e5b8f9be1c395471e1a3d1"      
    end
  end
end
