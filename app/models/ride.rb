# == Schema Information
#
# Table name: rides
#
#  id          :integer          not null, primary key
#  price       :float            not null
#  distance    :float            not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  provider_id :integer
#

class Ride < ActiveRecord::Base
  # **VALIDATIONS***********#
  validates_presence_of :price, :distance, :user_id, :provider_id
  before_validation :set_distance
  # ************************#

  # **ASSOCIATIONS**********#
  belongs_to :user
  belongs_to :provider
  has_one :start_address, class_name: "Address", dependent: :destroy
  has_one :destination_address, class_name: "Address", dependent: :destroy
  # ************************#
  accepts_nested_attributes_for :start_address, :destination_address
  # **METHODS**********#
  private
  def set_distance
    @distance = Distance.new(self.start_address, self.destination_address)
    unless @distance.nil?
      self.distance = @distance.get_distance
    else
      errors.add(:base, "issue with counting distance between addresses")
    end
  end
end
