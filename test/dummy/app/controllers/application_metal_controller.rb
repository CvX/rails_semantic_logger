class ApplicationMetalController < ActionController::Metal
  MODULES = [
    ActionController::Instrumentation,
    AbstractController::Rendering,
    ActionController::Rendering,
    ActionController::Renderers::All,
    # Helpers::Controller
  ].freeze

  MODULES.each do |mod|
    include mod
  end
end
