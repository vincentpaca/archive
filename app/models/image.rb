class Image < ActiveRecord::Base
  attr_accessible :page, :picture

  belongs_to :page

  has_attached_file :picture, :styles => { :medium => "300x300>" }
end
