require "cachet"

module Canary
  class Cage
    def initialize
      @incidents = CachetIncidents.new Canary.configuration.api_key, Canary.configuration.api_url
      @component_id = Canary.configuration.component_id.to_i
    end

    def latest_incident
      @incidents.list(component_id: @component_id)["data"].reject {|incident| incident["status"].eql? 4 }.first
    end
  end
end
