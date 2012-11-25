class DocumentWorker
  include Sidekiq::Worker

  def perform(doc, file)
    reader = PDF::Reader.new(file)

    reader.pages.each_with_index do |page, index|
      p = Page.new(:document_id => doc, :number => index, :content => page.text)
      p.save
    end
  end
end
