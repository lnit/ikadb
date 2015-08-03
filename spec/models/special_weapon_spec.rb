require 'rails_helper'

RSpec.describe SpecialWeapon, type: :model do
  describe "初期値" do
    subject { described_class.count }
    it { should == 7 }
  end
end
