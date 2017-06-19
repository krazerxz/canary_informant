module Canary
  class Flash
    def self.display
      view = ActionView::Base.new(ActionController::Base.view_paths, {})
      Rails.env.eql?("test") ? nil : view.render(partial: "status.html.slim", locals: {status: Status.new})
    end
  end
end
