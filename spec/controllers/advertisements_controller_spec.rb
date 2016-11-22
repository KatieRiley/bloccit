require 'rails_helper'

RSpec.describe AdvertisementsController, type: :controller do
  let(:my_add) { Advertisment.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, price: rand(10)) }

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "assigns [my_add] to @advertisments" do
      get :index
      expect(assigns(:advertisments)).to eq([my_add])
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

end
