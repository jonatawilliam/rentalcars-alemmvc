require 'rails_helper'

describe ApplicationHelper, type: :helper do
  # padrão - # para instância
  describe '#rental_status' do
    # it descrição do que o deve fazer o teste
    it 'should render green color when finalized' do
      # build só inicializa || create pesiste 
      rental = build(:rental, status: :finalized)

      result = helper.rental_status(rental)

      expect(result).to eq('<span class="badge badge-finalized">finalizada' \
                            '</span>')
    end
    it 'should render blue color when ongoing' do
      rental = build(:rental, status: :ongoing)

      result = helper.rental_status(rental)

      expect(result).to eq('<span class="badge badge-ongoing">em andamento' \
                            '</span>')
    end
  end
end