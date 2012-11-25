class Document < ActiveRecord::Base
  attr_accessible :content, :file_name, :title
end
