# require 'rails_helper'

# RSpec.describe ActivitiesController, type: :controller do
#   describe "POST #create" do
#     describe "with valid attributes" do 
#       it "successfully creates a new record with all params passed" do 
#         expect { post :create, params: valid_activity_params }.to change(Activity, :count).by(1)

#         new_activity = Activity.find_by(name: "Dancing")

#         expect(new_activity).to be_present
        
#       end
#       # expect(response).to redirect_to activities_path
#     end
#   end

#   def create_activity
#     activity = Activity.create!(
#       name: "Darts",
#       lesson_time: "November 20, 2021 at 12am"
#     )
#   end

#   def valid_activity_params
#     {
#       activity: {
#         name: "Dancing",
#         lesson_time: "October 28, 2021 at 12am"
#       }
#     }
#   end
# end