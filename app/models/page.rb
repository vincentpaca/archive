class Page < ActiveRecord::Base
  attr_accessible :content, :document, :number

  belongs_to :document
  has_many :images
end
