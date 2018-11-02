class Location

  def  initialize (name = nil)
    @name = name
  end

  def name=(name)
    @name = name
    return @name
  end

  def name
    return @name
  end

end

# my_loc = Location.new ("jessore")
#
# puts"The old city is : #{my_loc.name}"
#
# my_loc.name = ('toronto')
# puts"The new city is : #{my_loc.name}"

class Trip
  @@location = []

  def trip_loc=(trip_location)
      @@location << trip_location
  end

  def get_trip
    puts "Began trip."
    @@location.each_with_index do|dest,index|
      if (index == @@location.length-1)
        break
      end
      puts "Travelled from #{dest} to #{@@location[index+1]}"
    end
    puts "Ended trip."
  end
end



trip_1 = Trip.new
my_location1 =  Location.new('Toronto')
my_location2 =  Location.new('Ottawa')
my_location3 =  Location.new('Montreal')
my_location4 =  Location.new('Quebec City')
my_location5 =  Location.new('Halifax')
my_location6 =  Location.new("St. John's")

trip_1.trip_loc =(my_location1.name)
trip_1.trip_loc =(my_location2.name)
trip_1.trip_loc =(my_location3.name)
trip_1.trip_loc =(my_location4.name)
trip_1.trip_loc =(my_location5.name)
trip_1.trip_loc =(my_location6.name)

trip_1.get_trip
