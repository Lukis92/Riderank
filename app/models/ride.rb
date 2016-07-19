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
  # ************************#

  # **ASSOCIATIONS**********#
  belongs_to :user
  belongs_to :providers
  has_one :start_address, class_name: "Address"
  has_one :destination_address, class_name: "Address"
  # ************************#
end
