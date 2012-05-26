# -*- coding: utf-8 -*-
require 'spec_helper'

describe Person do

  it "名前なしで保存したらエラーになるべし" do
    person = Person.create(:name => "")
    person.errors.should_not be_empty
    person.persisted?.should == false
  end
end
