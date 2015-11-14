require 'rails_helper'

RSpec.describe Gear, type: :model do
  describe "初期値" do
    subject { described_class.count }
    it { should == 257 }
  end
end
