require 'rails_helper'

RSpec.describe "wineries/show", type: :view do
  before(:each) do
    @winery = assign(:winery, Winery.create!(
      :name => "Name",
      :location => "Location",
      :website => "Website",
      :image => "Image",
      :phone_number => "Phone Number",
      :visitors => false,
      :tours => false,
      :pets => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
