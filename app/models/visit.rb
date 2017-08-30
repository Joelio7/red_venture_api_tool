class Visit < ApplicationRecord
before_save :validate_data
belongs_to :user

private
  def validate_data
    @state = State.find_by(:name => self.state_name)
    @city = City.find_by(:name => self.city_name, :state_id => @state.id)
    if !@city.nil?
        self.city_id = @city.id
        self.state_id = @state.id
    end
  end
end
