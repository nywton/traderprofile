require 'rails_helper'

RSpec.describe "operations/edit", type: :view do
  before(:each) do
    @operation = assign(:operation, Operation.create!(
      :stock => nil,
      :user => nil,
      :in_strategy => "MyString",
      :out_strategy => "MyString",
      :tp_price => 1.5,
      :sl_price => 1.5,
      :max_profit => 1.5,
      :max_loss => 1.5,
      :obs => "MyText"
    ))
  end

  it "renders the edit operation form" do
    render

    assert_select "form[action=?][method=?]", operation_path(@operation), "post" do

      assert_select "input[name=?]", "operation[stock_id]"

      assert_select "input[name=?]", "operation[user_id]"

      assert_select "input[name=?]", "operation[in_strategy]"

      assert_select "input[name=?]", "operation[out_strategy]"

      assert_select "input[name=?]", "operation[tp_price]"

      assert_select "input[name=?]", "operation[sl_price]"

      assert_select "input[name=?]", "operation[max_profit]"

      assert_select "input[name=?]", "operation[max_loss]"

      assert_select "textarea[name=?]", "operation[obs]"
    end
  end
end
