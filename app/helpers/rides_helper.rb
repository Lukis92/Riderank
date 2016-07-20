module RidesHelper
  def provider_collection
    Provider.all.map{|p| [p.name, p.id]}
  end
end
