class Vessel
  attr_reader :volume
  attr_reader :name
  attr_accessor :current_volume
  attr_accessor :initial_fill

  def initialize(name, volume)
    @name = name
    @volume = volume
    @initial_fill = 0
    @current_volume = initial_fill
  end

  def empty?
    current_volume == 0
  end

  def fill
    @current_volume = volume
  end
end
