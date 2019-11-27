require 'rails_helper'

describe NilUser do
  context '#email' do
    # subjetc pega um instância da classe que esta usando
    # subject { described_class.new }
    it { expect(subject.email).to eq ''}
  end

  context '#admin' do
    it { expect(subject.admin?).to eq false }
  end

  context '#user' do
    it { expect(subject.user?).to eq false }
  end

  context '#persisted' do
    it { expect(subject.persisted?).to eq false }
  end
end