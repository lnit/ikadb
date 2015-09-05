require 'rails_helper'

RSpec.describe MainWeapon, type: :model do
  describe "初期値" do
    subject { described_class.count }
    it { should == 30 }
  end
end
