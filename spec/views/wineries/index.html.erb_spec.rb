require 'rails_helper'

RSpec.describe "wineries/index", type: :view do
  before(:each) do
    assign(:wineries, [
      Winery.create!(
        :name => "Name",
        :location => "Location",
        :website => "Website",
        :image => "Image",
        :phone_number => "Phone Number",
        :visitors => false,
        :tours => false,
        :pets => false
      ),
      Winery.create!(
        :name => "Name",
        :location => "Location",
        :website => "Website",
        :image => "Image",
        :phone_number => "Phone Number",
        :visitors => false,
        :tours => false,
        :pets => false
      )
    ])
  end

  it "renders a list of wineries" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
