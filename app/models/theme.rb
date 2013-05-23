class Theme < ActiveRecord::Base
  attr_accessible :title, :card_ids

  has_and_belongs_to_many :cards

   
  accepts_nested_attributes_for :cards, :allow_destroy => true
  attr_accessible :cards_attributes

  # rails_admin do
  #   configure :fans do
  #     inverse_of :teams
  #     # configuration here
  #   end
  # end
end
