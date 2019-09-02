# == Schema Information
#
# Table name: apartments
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  owner_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Apartment < ApplicationRecord
end
