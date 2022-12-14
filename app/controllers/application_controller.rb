class ApplicationController < ActionController::Base
  include ActionController::Helpers
  # attr_reader :current_user

  protect_from_forgery with: :exception
  before_action :authenticate_user!

  private

  def after_sign_up_path_for(_resource_or_scope)
    new_user_session
  end
end
