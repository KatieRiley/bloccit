require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisment) { Advertisment.create!(title: "New Post Title", body: "New Post Body", price: 5)}
  describe "attributes" do
    it "has title, body, and price attributes" do
      expect(advertisment).to have_attributes(title: "New Post Title", body: "New Post Body", price: 5)
    end
  end
end
