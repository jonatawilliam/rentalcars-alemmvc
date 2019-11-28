class RentalBuilder 
  def initialize(params, subsidiary)
    @params = params
    @subsidiary = subsidiary
  end

  def build 
    Rental.new(params) do |rental|
      rental.subsidiary = subsidiary
      rental.status = :scheduled
      rental.price_projection = rental.calculate_price_projection
    end
  end

  private

  attr_reader :params, :subsidiary
end

# Segunda opção 

# class RentalBuilder 
#   def self.build(params, subsidiary)
#     new(params, subsidiary).rental
#   end

#   def rental 
#     @rental ||=  Rental.new(params) do |rental|
#       rental.subsidiary = subsidiary
#       rental.status = :scheduled
#       rental.price_projection = rental.calculate_price_projection
#     end
#   end

#   private

#   attr_reader :params, :subsidiary
  
#   def initialize(params, subsidiary)
#     @params = params
#     @subsidiary = subsidiary
#   end
# end
