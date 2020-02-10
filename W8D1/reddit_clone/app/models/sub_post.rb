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

class SubPost < ApplicationRecord
  # validates :sub_id, :post_id, presence: true
  validates :post_id, uniqueness: {scope: :sub_id}
  
  belongs_to :sub

  belongs_to :post



end
