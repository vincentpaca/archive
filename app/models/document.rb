class Document < ActiveRecord::Base
  attr_accessible :content, :file_name, :title, :file

  has_attached_file :file

  validates_attachment_content_type :pdf,
    :content_type => [ 'application/pdf' ],
    :message => "Only PDF files are supported."

end
