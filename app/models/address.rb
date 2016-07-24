# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  street     :string           not null
#  city       :string           not null
#  country    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ride_id    :integer
#

class Address < ActiveRecord::Base
  belongs_to :ride, optional: true
end
