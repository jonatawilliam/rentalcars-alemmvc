require 'rails_helper'

describe CarModelDecorator do
  describe '#photo' do
    it 'show render image if not present' do
      car_model = build(:car_model)

      expect(car_model.decorate.photo).to eq 'https://via.placeholder.com/150x150'
    end
  end
end
