class UserPresenter < Draper::Decorator
  # include Rails.application.routes.url_helpers
  # Problemas de view context conferir o Draper
  delegate_all

  def admin_navbar
    return '' unless admin?

    helpers.render partial: 'shared/admin_navbar'
  end

  def user_navbar
    return '' unless user?

    helpers.render partial: 'shared/user_navbar'
  end

  # private

  #   def method_missing(method, *args, &block)
  #     object.public_send(method, *args, &block)
  #   end

  #   def respond_to_missing?(name, include_private = false)
  #     object.respond_to?(name, include_private)
  #   end
end