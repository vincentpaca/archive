class Document < ActiveRecord::Base
  attr_accessible :file_name, :title, :file

  has_attached_file :file
  has_many :pages
  
  after_create :process_document

  private

  def process_document
    DocumentWorker.perform_async(self)
  end
end
