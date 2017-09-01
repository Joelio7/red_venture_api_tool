class Visit < ApplicationRecord
  before_validation :validate_data
  validates :city_id, uniqueness: { scope: :user_id }
  validates :city_id , inclusion: { in: City.all.ids}
  belongs_to :user

  private

    def validate_data
      @state = State.find_by(:name => self.state_name)
      @city = City.find_by(:name => self.city_name, :state_id => @state.id)
      unless @city.nil?
          self.city_id = @city.id
          self.state_id = @state.id
      else
      errors.add(:city_name, :blank, message: "and State must exist. Perhaps you misspelled it?")
    end
  end

end
