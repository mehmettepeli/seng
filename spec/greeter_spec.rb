
class RSpecGreeter
  def greet
    "Logged in successfully."
  end
end



describe "RSpec Greeter" do
  it "should say Logged in successfully.' when it logged in" do
    greeter = RSpecGreeter.new
    greeting = greeter.greet
    greeting.should == "Logged in successfully."
  end
end