require 'spec_helper'

describe "learners/show" do
  before(:each) do
    @learner = assign(:learner, stub_model(Learner,
      :surname => "Surname",
      :name => "Name",
      :school => "School",
      :class => "Class",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Surname/)
    rendered.should match(/Name/)
    rendered.should match(/School/)
    rendered.should match(/Class/)
    rendered.should match(/Phone/)
  end
end
