# == Schema Information
#
# Table name: makers
#
#  id         :integer          not null, primary key
#  country    :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_makers_on_country  (country)
#
require "test_helper"

class MakerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
