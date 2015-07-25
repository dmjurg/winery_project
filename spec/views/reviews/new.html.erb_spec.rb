require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      :score => 1,
      :content => "MyText"
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input#review_score[name=?]", "review[score]"

      assert_select "textarea#review_content[name=?]", "review[content]"
    end
  end
end
