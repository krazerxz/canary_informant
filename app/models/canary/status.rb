include ActionView::Helpers::DateHelper

module Canary
  class Status
    def initialize incident: Cage.new.latest_incident
      @incident = incident
    end

    def ok?
      @incident.nil?
    end

    def title
      @incident["name"]
    end

    def updated_at
      time_ago_in_words @incident["updated_at"]
    end

    def message
      @incident["message"]
    end
  end
end
