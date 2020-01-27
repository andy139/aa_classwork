# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  age         :integer          not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string           not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'date'
require 'action_view'

class Cat < ApplicationRecord

  include ActionView::Helpers::DateHelper

  validates :birth_date, :color, :name, :description, :sex, presence: true

  validates :color, inclusion: {in: %w(yellow ginger black radioactive white grey brown pink gold), message: "%{value} is not a valid color" }
  
  validates :sex, inclusion: {in: %w(M F), message: "%{value} is not a valid sex" }

  def age
   
    time_ago_in_words(birth_date)
  
  end


end
