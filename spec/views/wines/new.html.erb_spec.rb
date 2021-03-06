require 'rails_helper'

RSpec.describe "wines/new", type: :view do
  before(:each) do
    assign(:wine, Wine.new(
      :varietal => "MyString"
    ))
  end

  it "renders new wine form" do
    render

    assert_select "form[action=?][method=?]", wines_path, "post" do

      assert_select "input#wine_varietal[name=?]", "wine[varietal]"
    end
  end
end
