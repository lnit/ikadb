require 'rails_helper'

RSpec.describe SubWeapon, type: :model do
  describe "初期値" do
    subject { described_class.count }
    it { should == 14 }
  end
end
