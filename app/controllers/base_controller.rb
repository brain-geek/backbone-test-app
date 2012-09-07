class BaseController < InheritedResources::Base
  respond_to :json

  def index
    respond_to :html
  end
end
