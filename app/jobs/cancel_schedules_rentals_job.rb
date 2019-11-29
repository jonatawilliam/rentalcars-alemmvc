class CancelSchedulesRentalsJob
  attr_reader :limit_date

  def self.auto_enqueue(limit_date)  
    Delayed::Job.enqueue(CancelSchedulesRentalsJob.new(limit_date))
  end

  def initialize(limit_date)
    @limit_date = limit_date
  end

  def perform
    rentals = Rental.scheduled.overpast.map(&:canceled!)
  end
end