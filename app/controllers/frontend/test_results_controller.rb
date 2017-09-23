module Frontend
  class TestResultsController < BaseController
    def index
      @test_results = TestResult.all
    end

    def show
      @test_result = TestResult.find(params[:id])
    end
  end
end
