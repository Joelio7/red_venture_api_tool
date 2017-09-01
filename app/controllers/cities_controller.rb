class CitiesController < ApplicationController
  def index
     @state = State.find_by(name: params[:state_id])
     unless @state.nil?
     @cities = @state.cities.paginate(page: params[:page], per_page: 50)
     json_response(@cities)
   else
     json_response({ message: "State does not exist. Perhaps you misspelled? Remember to replace all spaces with %20" })
    end
  end

  private
  def city_params
    params.require(:city).permit(:name,:longitude,:latitude,:status,:state_id)
  end

end
