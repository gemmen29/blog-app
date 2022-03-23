require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    before(:example) { get users_path } 

    it "Is response status correct" do
      expect(response).to have_http_status(:ok)
    end

    it "Is correct template rendered" do
      expect(response).to render_template('index')
    end

    it "Is the body includes correct text" do
      expect(response.body).to include('Index')
    end
  end
end
