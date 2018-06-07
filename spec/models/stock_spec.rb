require 'rails_helper'

RSpec.describe Stock, type: :model do

  it { should validate_presence_of(:name) }

  it { should validate_presence_of(:initials) }
end
