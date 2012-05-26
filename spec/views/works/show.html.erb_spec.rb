require 'spec_helper'

describe "works/show" do
  before(:each) do
    @work = assign(:work, stub_model(Work,
      :person => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
