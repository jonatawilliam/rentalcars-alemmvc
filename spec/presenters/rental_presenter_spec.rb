require 'rails_helper'

describe RentalPresenter do
  # padrão - # para instância
  describe '#status_badge' do
    # it descrição do que o deve fazer o teste
    it 'should render green color when finalized' do
      # build só inicializa || create pesiste 
      rental = build(:rental, status: :finalized)

      result = RentalPresenter.new(rental).status_badge

      expect(result).to eq('<span class="badge badge-finalized">finalizada' \
                            '</span>')
    end
    it 'should render blue color when ongoing' do
      rental = build(:rental, status: :ongoing)

      result = RentalPresenter.new(rental).status_badge

      expect(result).to eq('<span class="badge badge-ongoing">em andamento' \
                            '</span>')
    end
  end
end