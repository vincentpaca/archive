class Page < ActiveRecord::Base
  attr_accessible :content, :document, :document_id, :number

  belongs_to :document
  has_many :images
end
