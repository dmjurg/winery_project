require 'rails_helper'

RSpec.describe "reviews/edit", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :score => 1,
      :content => "MyText"
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "input#review_score[name=?]", "review[score]"

      assert_select "textarea#review_content[name=?]", "review[content]"
    end
  end
end
