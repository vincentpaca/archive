class Document < ActiveRecord::Base
  attr_accessible :file_name, :title, :file

  has_attached_file :file

  validates_attachment_content_type :pdf,
    :content_type => [ 'application/pdf' ],
    :message => "Only PDF files are supported."

  has_many :pages

  after_create :process_document

  private

  def process_document
    DocumentWorker.perform_async(self)
  end
end
