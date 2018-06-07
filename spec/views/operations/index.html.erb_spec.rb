require 'rails_helper'

RSpec.describe "operations/index", type: :view do
  before(:each) do
    assign(:operations, [
      Operation.create!(
        :stock => nil,
        :user => nil,
        :in_strategy => "In Strategy",
        :out_strategy => "Out Strategy",
        :tp_price => 2.5,
        :sl_price => 3.5,
        :max_profit => 4.5,
        :max_loss => 5.5,
        :obs => "MyText"
      ),
      Operation.create!(
        :stock => nil,
        :user => nil,
        :in_strategy => "In Strategy",
        :out_strategy => "Out Strategy",
        :tp_price => 2.5,
        :sl_price => 3.5,
        :max_profit => 4.5,
        :max_loss => 5.5,
        :obs => "MyText"
      )
    ])
  end

  it "renders a list of operations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "In Strategy".to_s, :count => 2
    assert_select "tr>td", :text => "Out Strategy".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
