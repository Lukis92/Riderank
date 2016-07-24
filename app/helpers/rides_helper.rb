module RidesHelper
  # map names of all providers
  def provider_collection
    Provider.all.map{|p| [p.name, p.id]}
  end

  # sum km of rides
  def sum_rides(rides)
    return km(0) if rides.count == 0
    sum = rides.map(&:distance).sum.to_f
    return km(sum.nice)
  end

  # average sum of km per rides count
  def avg_rides(rides)
    return km(0) if rides.count == 0
    avg = (rides.map(&:distance).sum / rides.count).to_f
    return km(avg.nice)
  end

  # average price paid for rides
  def avg_price(rides)
    return euro(0) if rides.count == 0
    avg = (rides.map(&:price).sum / rides.count).to_f
    return euro(avg.nice)
  end

  # display providers
  def display_providers
    rides.map{|ride| ride.provider.name}.uniq.join(', ')
  end

  # all rides in current week
  def current_week
    rides = current_user.rides.where("created_at > ?", Date.today.at_beginning_of_week)
  end

  # all rides in current month
  def current_month
    rides = current_user.rides.where("created_at > ?", Date.today.at_beginning_of_month)
  end


  # e.g. 12.45 km instead 12.45
  def km(dist)
    "#{dist}km"
  end

  # e.g. 45.22 EUR instead 45.22
  def euro(price)
    "#{price} EUR"
  end
end
