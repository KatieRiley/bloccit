require 'rails_helper'

RSpec.describe SponsoredPostController, type: :controller do
  let(:my_topic) {Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph)}
  let(:my_sponsored_post) {my_topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, price = 2)}

  describe "GET #:show" do
    it "returns http success" do
      get :show, topic_id: my_topic.id, id: my_sponsored_post.id
      expect(response).to have_http_status(:success)
    end
    it "renders the #show view" do
      get :show, topic_id: my_topic.id, id: my_sponsored_post.id
      expect(response).to render_template :show
    end
    it "assigns my_sponsored_post to @sponsored_post" do
      get :show, topic_id: my_topic.id, id: my_sponsored_post.id
      expect(assigns(:sponsored_post)).to eq(my_sponsored_post)
    end
  end

  describe "GET #:new" do
    it "returns http success" do
      get :new, topic_id: my_topic.id
      expect(response).to have_http_status(:success)
    end

    it "renders the #new view" do
      get :new, topic_id: my_topic.id
      expect(response).to render_template :new
    end

    it "instantiates @sponsored_post" do
      get :new, topic_id: my_topic.id
      expect(assigns(:post)).not_to be_nil
    end
  end

  describe "GET #:edit" do
    it "returns http success" do
      get :edit, topic_id: my_topic.id, id: my_sponsored_post.id
      expect(response).to have_http_status(:success)
   end
   it "renders the #edit view" do
     get :edit, topic_id: my_topic.id, id: my_sponsored_post.id
     expect(response).to render_template :edit
   end
   it "assigns post to be updated to @post" do
     get :edit, topic_id: my_topic.id, id: my_sponsored_post.id
     post_instance = assigns(:sponsored_post)
     expect(post_instance.id).to eq my_sponsored_post.id
     expect(post_instance.title).to eq my_sponsored_post.title
     expect(post_instance.body).to eq my_sponsored_post.body
   end
  end

end
