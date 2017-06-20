module Canary
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield configuration
  end

  class Configuration
    attr_accessor :api_url
    attr_accessor :api_key
    attr_accessor :component_id
  end
end
