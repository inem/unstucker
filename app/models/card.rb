class Card < ActiveRecord::Base
  attr_accessible :title, :what_for, :how, :needs, :url, :complexity, :duration, :pack_id, :theme_ids

  belongs_to :pack
  has_and_belongs_to_many :themes

  accepts_nested_attributes_for :themes, :allow_destroy => true
  attr_accessible :themes_attributes

  rails_admin do
    configure :themes do
      inverse_of :cards
      # configuration here
    end
  end
end
