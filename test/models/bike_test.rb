# == Schema Information
#
# Table name: bikes
#
#  id         :integer          not null, primary key
#  country    :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  maker_id   :integer          not null
#
# Indexes
#
#  index_bikes_on_maker_id  (maker_id)
#
require "test_helper"

class BikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
