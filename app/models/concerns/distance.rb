require 'addressable/uri'
require 'httparty'
class Distance
  def initialize(address1, address2)
    @start_address = address1
    @destination_address = address2
  end

  def get_distance
    distance = 0
    if @start_address.blank? || @destination_address.blank?
     	return nil
    else
      s_address = URI.encode(@start_address.street+', '+@start_address.city+', '+@start_address.country)
      e_address = URI.encode(@destination_address.street+', '+@destination_address.city+', '+@destination_address.country)

      base_url = 'http://maps.googleapis.com/maps/api/directions/json'
      req_url = "#{base_url}?origin=#{s_address}&destination=#{e_address}&sensor=false"
      request = HTTParty.get(req_url)
      # raise 'Dupa'
      if request['routes'].empty?
  	     return nil
      else
        begin
          distance = request['routes'][0]['legs'][0]['distance']['text']
        rescue NoMethodError
          puts request.inspect
          exit
        end
      return distance
      end
   end
  end
end
