class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def authorize_admin
    redirect_to root_path unless current_user.admin?
  end

  def current_subsidiary
    current_user.subsidiary if current_user.user?
  end

  def current_user
    UserPresenter.new(super || NilUser.new)
  end

  def user_signed_in?
    # persisted se tem ID ou não
    current_user.persisted?
  end
end
