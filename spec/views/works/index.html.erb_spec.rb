require 'spec_helper'

describe "works/index" do
  before(:each) do
    assign(:works, [
      stub_model(Work,
        :person => nil
      ),
      stub_model(Work,
        :person => nil
      )
    ])
  end

  it "renders a list of works" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
