class Ticket
  attr_reader :fare, :stamped_at

  def initialize(fare)
    @fare = fare

    def stamp(name)
      @stamped_at = name
    end
  end
end