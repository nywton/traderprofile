require 'rails_helper'

RSpec.describe "operations/show", type: :view do
  before(:each) do
    @operation = assign(:operation, Operation.create!(
      :stock => nil,
      :user => nil,
      :in_strategy => "In Strategy",
      :out_strategy => "Out Strategy",
      :tp_price => 2.5,
      :sl_price => 3.5,
      :max_profit => 4.5,
      :max_loss => 5.5,
      :obs => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/In Strategy/)
    expect(rendered).to match(/Out Strategy/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/MyText/)
  end
end
