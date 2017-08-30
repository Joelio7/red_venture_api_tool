class CitiesController < ApplicationController
  before_action :get_state
  def index
    @state = State.find_by(params[:name])
    @cities = @state.cities.paginate(page: params[:page], per_page: 50)
    json_response(@cities)
  end

  private
  def city_params
    params.require(:city).permit(:name,:longitude,:latitude,:status)
  end
  def get_state
    @state = State.find_by(params[:name])
  end
end
