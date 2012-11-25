class DocumentWorker
  include Sidekiq::Worker

  def perform(doc)
    reader = PDF::Reader.new(doc.file)

    reader.pages.each_with_index do |page, index|
      p = Page.new(:document => doc, :number => index, :content => page.text)
      p.save
    end
  end
end
