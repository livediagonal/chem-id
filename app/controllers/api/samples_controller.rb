module Api
  class SamplesController < BaseController
    def create
      user = User.find_by(email: params[:sample][:user])
      @sample = Sample.new(user: user)
      params[:sample][:data].each do |time, intensity|
        @sample.hplc_data.create(minute: time, millivolts: intensity)
      end
      @sample.save!
    end

    def update
      @sample = Sample.find(params[:id])
      @sample.update(sample_params)
    end

    private

    def sample_params
      params[:sample].permit(:notes)
    end
  end
end