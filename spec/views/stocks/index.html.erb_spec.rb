require 'rails_helper'

RSpec.describe "stocks/index", type: :view do
  before(:each) do
    assign(:stocks, [
      Stock.create!(
        :name => "Name",
        :initials => "Initials"
      ),
      Stock.create!(
        :name => "Name",
        :initials => "Initials"
      )
    ])
  end

  it "renders a list of stocks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Initials".to_s, :count => 2
  end
end
