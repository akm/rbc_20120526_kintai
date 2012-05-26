# -*- coding: utf-8 -*-
require 'spec_helper'

describe "people/show_kintai" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :name => "MyString"
    ))
  end

  it "renders 勤怠入力画面" do
    render

    assert_select "a[data-method=post]", :text => "出社"
    assert_select "a[data-method=put]", :text => "退社"
  end
end
