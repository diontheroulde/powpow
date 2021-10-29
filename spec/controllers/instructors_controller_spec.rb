# require 'rails_helper'

# RSpec.describe InstructorsController, type: :controller do
#   describe "POST #create" do
#     describe "with valid attributes" do 
#       it "successfully creates a new record with all params passed" do 
#         expect { post :create, params: valid_instructor_params }.to change(Instructor, :count).by(1)

#         new_instructor = Instructor.find_by(name: "Gordy")

#         expect(new_instructor).to be_present
        
#       end

#       it "redirects to a different page that gets updated with the recently created info" do 
#         post :create, params: valid_instructor_params

#         new_instructor = Instructor.find_by(name: "Gordy")

#         expect(response).to redirect_to login_path
#       end
#     end

#     describe "with invalid attributes" do 
#       it "fails" do 
#         expect { post :create, params: invalid_instructor_params }.to change(Instructor, :count).by(0)
        
#         expect(response).to render_template(:new)
#       end

#       it "flashes an error message" do 
#         post :create, params: invalid_instructor_params

#         expect(flash[:error]).to eq "Somethings Wrong!"
#       end
#     end
#   end
  
#   def create_instructor
#     instructor = Instructor.create!(
#       name: "Gordy"
#     )
#   end

#   def valid_instructor_params
#     {
#       instructor: {
#         name: "Gordy"
#       }
#     }
#   end

#   def invalid_instructor_params 
#     {
#       instructor: {
#         name: "Gordy"
#       }
#     }
#   end
# end