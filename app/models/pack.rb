class Pack < ActiveRecord::Base
  attr_accessible :title

  has_many :cards

end
