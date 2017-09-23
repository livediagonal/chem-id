module Frontend
  class TestResultsController < BaseController
    def index
      @q = TestResult.ransack(params[:q])
      @test_results = @q.result(distinct: true)
    end

    def show
      @test_result = TestResult.find(params[:id])
    end
  end
end
