class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
    @reservoir.fill
    reservoir.fill
    @reservoir.itself.fill
  end

  def dispense(vessel)
    reservoir.drain(vessel.volume)
    reservoir.fill
  end

end
