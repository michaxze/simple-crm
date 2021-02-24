class Api::ApiController < ActionController::API
  include ExceptionHandler
  include ActionController::ImplicitRender
  include ActionView::Layouts
end
