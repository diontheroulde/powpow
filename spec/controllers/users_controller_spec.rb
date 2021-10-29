require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #show" do
    it "renders the show template", :aggregate_failures do
      user = create_user

      get :show, params: { id: user.id}, session: { user_id: user.id }

      expect(response).to render_template(:show)
    end

  #   it "assigns @check_in to the correct instance" do
  #     check_in = create_check_in

  #     get :show, params: valid_user_params, session: { user_id: 1 }

  #     expect(assigns[:check_in]).to eq check_in
  #   end

  #   it "the response status is a success" do
  #     check_in = create_check_in

  #     get :show, params: { id: check_in.id }, session: { user_id: 1 }

  #     expect(response.status).to eq 200
  #   end
   end

  describe "POST #create" do
    describe "with valid attributes" do 
      it "successfully creates a new record with all params passed" do 
        expect { post :create, params: valid_user_params }.to change(User, :count).by(1)

        new_user = User.find_by(first_name: "Kurtsin")

        expect(new_user).to be_present
        
      end

      it "redirects to a different page that gets updated with the recently created info" do 
        post :create, params: valid_user_params

        new_user = User.find_by(first_name: "Kurtsin")

        expect(response).to redirect_to login_path
      end
    end

    describe "with invalid attributes" do 
      it "fails" do 
        expect { post :create, params: invalid_user_params }.to change(User, :count).by(0)
        
        expect(response).to render_template(:new)
      end

      it "flashes an error message" do 
        post :create, params: invalid_user_params

        expect(flash[:error]).to eq "Somethings Wrong!"
      end
    end
  end
  
  def create_user
    user = User.create!(
      first_name: "Kurtsin",
      last_name: "Stormy",
      username: "username",
      password: "password",
      password_confirmation: "password"
    )
  end

  def valid_user_params
    {
      user: {
        first_name: "Kurtsin",
        last_name: "Stormy",
        username: "username",
        password: "password",
        password_confirmation: "password"
      }
    }
  end

  def invalid_user_params 
    {
      user: {
        first_name: "Kurtsin",
        username: "username",
        password: "password",
        password_confirmation: "password"
      }
    }
  end
end