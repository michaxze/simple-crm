class Api::V1::ContactsController < Api::ApiController
  before_action :set_person, only: [:update, :destroy]  

  def index
    @people = Person.order(created_at: :desc).page(params[:page])
  end

  def create
    @person = Person.create!(person_params)
  end

  def update
    @person.update_attributes!(person_params)
  end

  def destroy
    @person.destroy
  end

  def search
    @people = Person.where("tags like :search", search: "%#{params[:'term']}%").page(params[:page])
  end

  private

  def set_person
    @person = Person.find(params[:id])
  end

  def person_params
    params.permit(:firstname, :lastname, :email, tags: [])
  end
end
