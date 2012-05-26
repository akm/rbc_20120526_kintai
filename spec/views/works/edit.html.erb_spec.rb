require 'spec_helper'

describe "works/edit" do
  before(:each) do
    @work = assign(:work, stub_model(Work,
      :person => nil
    ))
  end

  it "renders the edit work form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => works_path(@work), :method => "post" do
      assert_select "input#work_person", :name => "work[person]"
    end
  end
end
