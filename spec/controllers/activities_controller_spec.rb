require 'spec_helper'

describe ActivitiesController "creating a new menu item" do
  integrate_views


   it "should redirect to index with a notice on successful save" do
     Activity.any_instance.stubs(:valid?).returns(true)
     post 'create'
     flash[:notice].should_not be.nil
     response.should redirect_to(activities_path)
   end
   it "should re-render new template on failed save"


end
