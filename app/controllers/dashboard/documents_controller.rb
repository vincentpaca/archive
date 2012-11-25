class Dashboard::DocumentsController < DashboardController
  def index
  end

  def create
    @document = Document.new(params[:document])

    if @document.save
      redirect_to dashboard_path
    end
  end
end
