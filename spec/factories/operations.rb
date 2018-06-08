FactoryBot.define do
  factory :operation do
    stock nil
    user nil
    in_strategy "MyString"
    out_strategy "MyString"
    start_time "2018-06-07 19:26:19"
    end_time "2018-06-07 19:26:19"
    tp_price 1.5
    sl_price 1.5
    max_profit 1.5
    max_loss 1.5
    obs "MyText"
  end
end
