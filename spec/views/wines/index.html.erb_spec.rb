require 'rails_helper'

RSpec.describe "wines/index", type: :view do
  before(:each) do
    assign(:wines, [
      Wine.create!(
        :varietal => "Varietal"
      ),
      Wine.create!(
        :varietal => "Varietal"
      )
    ])
  end

  it "renders a list of wines" do
    render
    assert_select "tr>td", :text => "Varietal".to_s, :count => 2
  end
end
