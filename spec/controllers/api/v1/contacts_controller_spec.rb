require 'rails_helper'

RSpec.describe Api::V1::ContactsController, type: :controller do
  let!(:valid_user){
    {
      firstname: 'John',
      lastname: 'Doe',
      email: 'johndoe@example.com',
      tags: ['Lead', 'HighValue']
    }
  }
  let(:valid_params){
    {
      firstname: 'John',
      lastname: 'Smith',
      email: 'test@example.com',
      format: :json
    }
  }
  let(:invalid_params){
    {
      firstname: nil,
      lastname: 'Smith',
      email: 'test@example.com',
      format: :json
    }
  }


  describe "GET #list" do
    it "returns http success" do
      get :index, format: :json
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      post :create, params: valid_params
      expect(response).to have_http_status(:success)
    end

    it "returns an error for invalid params" do
      post :create, params: invalid_params
      expect(response).to have_http_status(422)
    end
  end

  describe "GET #update" do
    before do
      @person = create(:person)
    end
    it "returns http success" do
      patch :update, params: valid_params.merge(id: @person.id)
      expect(response).to have_http_status(:success)
    end

  end

  describe "GET #delete" do
    before do
      @person = create(:person)
    end
    it "returns http success" do
      delete :destroy, params: { id: @person.id}, format: :json
      expect(response).to have_http_status(:success)
    end
  end

end
