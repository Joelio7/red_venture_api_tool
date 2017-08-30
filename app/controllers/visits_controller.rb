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
    @visit.destroy
    head :no_content
  end

  def states_index
    @user = User.find(params[:user_id])
    @states = @user.visits.select('id','user_id','state_name').uniq(&:state_name)
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
