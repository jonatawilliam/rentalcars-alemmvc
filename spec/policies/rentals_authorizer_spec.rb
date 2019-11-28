require 'rails_helper'

xdescribe RentalAuthorizer do 
  context '#authorized?' do
    it 'should be true if admin' do
      user = create(:user, role: :admin)
      rental = create(:rental)
      expect(described_class.new(rental, user)).to be_authorized?
    end

    it 'should be true if employee' do
    end

    it 'bot authorized unless admin or employee' do
    end
  end
end