# == Schema Information
#
# Table name: sub_posts
#
#  id         :bigint           not null, primary key
#  sub_id     :integer
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SubPostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
