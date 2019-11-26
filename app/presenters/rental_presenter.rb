class RentalPresenter < SimpleDelegator
  delegate :content_tag, to: :helper

  # SimpleDelgator faz este Initialize por default
  # def initialize(rental)
  #   super(rental)
  # end

  def status_badge
    content_tag :span, class: "badge badge-#{status}" do
      I18n.t(status)
    end
  end

  private

  def helper
    @helper ||= ApplicationController.helpers
  end
end
