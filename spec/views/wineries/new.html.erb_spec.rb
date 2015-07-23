require 'rails_helper'

RSpec.describe "wineries/new", type: :view do
  before(:each) do
    assign(:winery, Winery.new(
      :name => "MyString",
      :location => "MyString",
      :website => "MyString",
      :image => "MyString",
      :phone_number => "MyString",
      :visitors => false,
      :tours => false,
      :pets => false
    ))
  end

  it "renders new winery form" do
    render

    assert_select "form[action=?][method=?]", wineries_path, "post" do

      assert_select "input#winery_name[name=?]", "winery[name]"

      assert_select "input#winery_location[name=?]", "winery[location]"

      assert_select "input#winery_website[name=?]", "winery[website]"

      assert_select "input#winery_image[name=?]", "winery[image]"

      assert_select "input#winery_phone_number[name=?]", "winery[phone_number]"

      assert_select "input#winery_visitors[name=?]", "winery[visitors]"

      assert_select "input#winery_tours[name=?]", "winery[tours]"

      assert_select "input#winery_pets[name=?]", "winery[pets]"
    end
  end
end
