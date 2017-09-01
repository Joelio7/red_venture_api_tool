class VisitsController < ApplicationController
  def create
    @visit = @current_user.visits.create!(visit_params)
    json_response(@visit, :created)
  end

  def index
    @user = User.find(params[:user_id])
    @visits = @user.visits.paginate(page: params[:page], per_page: 20)
    json_response(@visits)
  end

  def destroy
    @visit = @current_user.visits.find(params[:id])
    if @visit.destroy
      head :no_content
      json_response("Visit successfully removed")
    end
  end

  def states_index
    @states=  []
    @user = User.find(params[:user_id])
    states = @user.visits.select('id','user_id','state_name','city_name','state_id','city_id','created_at','updated_at').uniq(&:state_name)
    states.each do |state|
      @states << state.state_name
    end
    json_response(@states)
  end

  private
  def visit_params
    params.permit(:city_name,:city_id,:user_id,:state_name,:state_id)
   end

  def get_current_user
    @current_user = current_user
  end

end
