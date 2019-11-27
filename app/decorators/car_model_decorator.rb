class CarModelDecorator < Draper::Decorator
  delegate_all

  def photo
    return super if super.attached?
    'https://via.placeholder.com/150x150'
  end

  def car_options
    return [] if super.blank?

    super.split(',')
    # ou
    # object.car_options.split(',')
  end
end