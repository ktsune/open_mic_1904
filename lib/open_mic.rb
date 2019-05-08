class OpenMic
  attr_accessor :location, :date
  def initialize(location: "Comedy Works", date: "11-20-18")
    @location = location
    @date = date
    @performers = []
  end
end
