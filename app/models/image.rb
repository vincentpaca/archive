class Image < ActiveRecord::Base
  attr_accessible :document, :picture

  belongs_to :document

  has_attached_file :picture, :styles => { :medium => "300x300>" }
end
