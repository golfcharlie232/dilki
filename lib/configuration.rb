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
      @api_key = ""      
    end
  end
end
