class BaseController < InheritedResources::Base
  respond_to :json

  def index
    respond_to do |format|
      format.html
      format.json { respond_with collection }
    end
  end
end
