require 'rails_helper'

RSpec.describe Weapon, type: :model do
  describe "初期値" do
    subject { described_class.count }
    it { should == 74 }
  end
end
