# == Schema Information
#
# Table name: providers
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Provider < ActiveRecord::Base
  validates :name, presence: true
end
