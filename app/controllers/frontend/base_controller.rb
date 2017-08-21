module Frontend
  class BaseController < ActionController::Base
    protect_from_forgery with: :null_session

    layout 'frontend/layouts/application'

    before_action :authenticate_user!
  end
end
