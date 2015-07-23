require 'rails_helper'

RSpec.describe "wines/show", type: :view do
  before(:each) do
    @wine = assign(:wine, Wine.create!(
      :varietal => "Varietal"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Varietal/)
  end
end
