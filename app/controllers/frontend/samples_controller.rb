module Frontend
  class SamplesController < BaseController
    def index
      @samples = Sample.all
    end

    def show
      @sample = Sample.find(params[:id])
    end
  end
end